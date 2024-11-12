FROM golang:1.23.2-alpine

WORKDIR /api/backend

COPY backend/go.mod backend/go.sum ./

RUN go mod download

COPY backend ./

RUN go build -o main ./main.go

EXPOSE 8080

CMD ["./main"]
