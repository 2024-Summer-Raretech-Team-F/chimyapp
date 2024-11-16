FROM golang:1.23.2-alpine

WORKDIR /api/backend

COPY api/go.mod api/go.sum ./

RUN go mod download

COPY api ./

RUN go build -o main ./main.go

EXPOSE 8080

CMD ["./main"]
