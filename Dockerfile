FROM rust:alpine
WORKDIR /usr/bin
RUN apk add musl-dev
RUN cargo install dify-openai-apis
CMD ["dify-openai-apis"]