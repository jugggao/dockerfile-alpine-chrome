FROM jugggao/alpine-chrome:with-node

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD 1
ENV PUPPETEER_EXECUTABLE_PATH /usr/bin/chromium-browser

WORKDIR /app
COPY --chown=chrome package.json package-lock.json ./
RUN npm install
COPY --chown=chrome . ./
ENTRYPOINT ["tini", "--"]
CMD ["node", "/app/src/pdf"]