FROM dtzar/helm-kubectl:3

ARG TARGETARCH

##ENV AKUITY_CLI_VERSION=v0.15.0
ENV AKUITY_CLI_VERSION=v0.20.1

RUN apk -U upgrade \
    && wget -O /usr/local/bin/akuity -q "https://dl.akuity.io/akuity-cli/${AKUITY_CLI_VERSION}/linux/${TARGETARCH}/akuity" \
    && chmod +x /usr/local/bin/akuity \
    && akuity version  --short
