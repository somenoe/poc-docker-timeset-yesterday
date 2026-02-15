# Example Dockerfile
FROM alpine:latest

RUN apk add --no-cache libfaketime

ENV FAKETIME="-1d"

CMD ["date"]
