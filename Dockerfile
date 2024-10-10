FROM alpine:latest
RUN apk add --no-cache \
    gcc \
    musl-dev \
    libgcc \
    musl \
    libc6-compat
WORKDIR /usr/bin
RUN apk add musl-dev
RUN cargo install dify-openai-apis
CMD ["dify-openai-apis"]