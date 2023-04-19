FROM golang:1.20.0

ENV REDIS-SERVICE-NAME="redis"


WORKDIR /app
ADD go.* main.go ./
RUN go mod download \
    && CGO_ENABLED=0 GOOS=linux go build -o main .

FROM scratch
WORKDIR /app
COPY --from=0 /app/main .
COPY ./public/index.html public/index.html
COPY ./public/script.js public/script.js
COPY ./public/style.css public/style.css
CMD ["/app/main"]
EXPOSE 3000
