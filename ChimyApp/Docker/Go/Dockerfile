FROM golang:1.23.2-alpine

WORKDIR /api

COPY api/go.mod api/go.sum ./

RUN go mod download

COPY api /api

RUN go build -o main ./cmd/main.go

EXPOSE 8080

CMD ["./main"]
