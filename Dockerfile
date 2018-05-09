FROM alpine:3.5

RUN apk --no-cache add openssl curl

ARG VERSION=1.0.0

RUN curl -LsS "https://github.com/thbishop/github-commit-status/releases/download/$VERSION/github-commit-status-$VERSION-linux-amd64.tar.gz" | tar -C /usr/bin -zxvf -

ENTRYPOINT ["/usr/bin/github-commit-status"]

