FROM jugggao/alpine-chrome

USER root
RUN apk add --no-cache \
    tini \
    nodejs \
    npm \
    yarn
USER chrome
ENTRYPOINT ["tini", "--"]