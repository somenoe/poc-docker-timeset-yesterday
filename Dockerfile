# Example Dockerfile
FROM alpine:latest

RUN apk add --no-cache libfaketime

ENV LD_PRELOAD=/usr/lib/faketime/libfaketime.so.1
ENV FAKETIME="-1d"

CMD ["date"]
