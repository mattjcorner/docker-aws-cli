FROM alpine:latest
RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
RUN apk update
RUN apk add --no-cache aws-cli
ENTRYPOINT ["aws"]
