# Stage 1: Build (optional if you already built locally)
FROM ubuntu:22.04 AS build
RUN apt-get update && apt-get install -y curl unzip xz-utils git
RUN curl -LO https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.0-stable.tar.xz
RUN tar xf flutter_linux_3.24.0-stable.tar.xz
ENV PATH="$PATH:/flutter/bin"
WORKDIR /app
COPY . .
RUN flutter build web --release

# Stage 2: Serve with Nginx
FROM nginx:alpine
COPY --from=build /app/build/web /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
