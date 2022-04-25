FROM node:14-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install && npm run build && npm install -g serve
RUN addgroup -S app && adduser -S app -G app && chown -R app:app /usr/src/app
USER app
CMD serve -s build
EXPOSE 3000