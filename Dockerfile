FROM node:18-alpine

WORKDIR /app

# INSTALLING dependencies
COPY ./cntrl-vuttons/package.json ./cntrl-vuttons/yarn.lock ./
RUN yarn install

# COPY next config
COPY ./cntrl-vuttons/next.config.js ./next.config.js

# COPY tailwind and its styles
COPY ./cntrl-vuttons/postcss.config.js ./postcss.config.js
COPY ./cntrl-vuttons/tailwind.config.js ./tailwind.config.js

# COPY src with app
COPY ./cntrl-vuttons/src ./src
COPY ./cntrl-vuttons/public ./public


CMD ["yarn", "dev"]