FROM node:8-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ["package.json", "yarn.lock", "./"]
RUN yarn install --production --silent && mv node_modules ../
COPY dist/ .
EXPOSE 3000
CMD ["node", "."]