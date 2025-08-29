# drinternet/rsync@v1.4.4
#FROM drinternet/rsync@sha256:15b2949838074bd93c49421c22380396a0cd53a322439e799ac87afcadcfe234
FROM alpine:latest

# always force-upgrade rsync to get the latest security fixes
RUN echo "Bryan's dockerfile"
RUN apk update
RUN apk add --no-cache --upgrade rsync openssh

RUN rm -rf /var/cache/apk/*

# Copy entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
