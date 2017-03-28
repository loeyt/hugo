FROM alpine:3.5

RUN apk --no-cache add curl

RUN curl -sSL https://github.com/spf13/hugo/releases/download/v0.19/hugo_0.19_Linux-64bit.tar.gz \
  | tar -xz && mv /hugo_0.19_linux_amd64/hugo_0.19_linux_amd64 /usr/local/bin/hugo

CMD ["/usr/local/bin/hugo"]
