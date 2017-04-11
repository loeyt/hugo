FROM alpine:3.5

RUN apk --no-cache add curl

RUN curl -sSL https://github.com/spf13/hugo/releases/download/v0.20/hugo_0.20_Linux-64bit.tar.gz \
  | tar -xz && mv /hugo_0.20_linux_amd64/hugo_0.20_linux_amd64 /usr/local/bin/hugo \
  && rm -r /hugo_0.20_linux_amd64

CMD ["/usr/local/bin/hugo"]
