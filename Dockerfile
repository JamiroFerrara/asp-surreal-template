    FROM mcr.microsoft.com/dotnet/runtime-deps:7.0-alpine-amd64

    EXPOSE 8080

    RUN mkdir /app
    WORKDIR /app
    COPY ./bin/Debug/net7.0/linux-musl-x64/. ./

    RUN chmod +x ./demo
    CMD ["./demo", "--urls", "http://0.0.0.0:8080"]
