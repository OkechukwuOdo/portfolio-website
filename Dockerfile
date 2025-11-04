# Stage 1: Build
FROM ubuntu:22.04 AS build

RUN apt-get update && apt-get install -y curl unzip xz-utils git

# Install Flutter (match your local version)
# RUN curl -LO https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.4-stable.tar.xz \
RUN curl -LO https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.27.0-stable.tar.xz \

    && tar xf flutter_linux_3.24.4-stable.tar.xz

ENV PATH="$PATH:/flutter/bin"

# Fix git ownership warning
RUN git config --global --add safe.directory /flutter

WORKDIR /app
COPY . .
RUN flutter build web --release

# Stage 2: Serve with Nginx
FROM nginx:alpine
COPY --from=build /app/build/web /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
