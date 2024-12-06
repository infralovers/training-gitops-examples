FROM golang:1.23 AS builder

ENV REDIS-SERVICE-NAME="redis"


WORKDIR /app
ADD go.* main.go ./
RUN go mod download \
    && CGO_ENABLED=0 go build -o main .

FROM scratch
WORKDIR /app
COPY --from=builder /app/main .
COPY ./public /app/public/
ENTRYPOINT ["/app/main"]
EXPOSE 3000
