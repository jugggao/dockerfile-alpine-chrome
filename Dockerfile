FROM alpine:3.18

# Installs latest Chromium package.
RUN apk add --no-cache \
    chromium \
    ttf-dejavu \
    fontconfig

# Add Chrome as a user
RUN adduser -D chrome && \
    mkdir -p /app && \
    chown -R chrome:chrome /app

USER chrome
WORKDIR /app

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/

ENV CHROMIUM_FLAGS="--disable-software-rasterizer --disable-dev-shm-usage"
ENTRYPOINT ["chromium-browser", "--headless"]


