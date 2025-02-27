ARG HUGO_VERSION=0.89.4
ARG DIST_TAG=-ext-ubuntu
FROM klakegg/hugo:${HUGO_VERSION}${DIST_TAG}

LABEL maintainer="CoMSES Net <support@comses.net>"

WORKDIR /src
COPY ./package.json ./yarn.lock /src/

RUN yarn install

CMD ["server"]
