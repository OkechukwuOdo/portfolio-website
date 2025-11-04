# Stage 1: Build Flutter Web
FROM ubuntu:22.04 AS build

# Install required dependencies
RUN apt-get update && apt-get install -y curl unzip xz-utils git

# Download and extract Flutter SDK (use the same version for download and extraction)
RUN curl -LO https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.27.0-stable.tar.xz \
    && tar xf flutter_linux_3.27.0-stable.tar.xz \
    && mv flutter /usr/local/flutter

# Add Flutter to PATH
ENV PATH="/usr/local/flutter/bin:$PATH"

# Fix git ownership warning
RUN git config --global --add safe.directory /usr/local/flutter

# Pre-download Flutter dependencies
RUN flutter doctor -v

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Build Flutter Web release
RUN flutter build web --release

# Stage 2: Serve with Nginx
FROM nginx:alpine

# Copy build output from Flutter
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
