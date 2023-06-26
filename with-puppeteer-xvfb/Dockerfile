FROM jugggao/alpine-chrome:with-puppeteer

USER root
RUN apk add --no-cache xvfb
USER chrome

ENV DISPLAY :99

COPY --chown=chrome . ./
RUN chmod +x docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD ["node", "/app/src/extension.js"]