FROM alpine:latest
RUN apk add --no-cache \
    gcc \
    musl-dev \
    libgcc \
    musl \
    libc6-compat
WORKDIR /app
COPY dify-openai-apis
RUN chmod +x dify-openai-apis
CMD ["./dify-openai-apis"]
