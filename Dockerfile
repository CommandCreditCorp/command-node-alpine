ARG NODE_VERSION="20"
ARG ALPINE_VERSION=""
ARG PNPM_VERSION="^9.12.3"

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION}

RUN apk update \
 && apk add --no-cache libc6-compat \
 && rm -rf /var/cache/apk/*

# Enable corepack for pnpm
# RUN corepack enable

RUN npm install -g pnpm@${PNPM_VERSION}


