FROM alpine:3.5

RUN apk --no-cache add curl

RUN curl -sSL https://github.com/spf13/hugo/releases/download/v0.20.4/hugo_0.20.4_Linux-64bit.tar.gz \
  | tar -xz hugo && mv hugo /usr/local/bin/hugo

CMD ["/usr/local/bin/hugo"]
