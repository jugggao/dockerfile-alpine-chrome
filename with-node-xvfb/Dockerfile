FROM jugggao/alpine-chrome:with-node

USER root
RUN apk add --no-cache xvfb
USER chrome

ENV DISPLAY :99

COPY --chown=chrome docker-entrypoint.sh 