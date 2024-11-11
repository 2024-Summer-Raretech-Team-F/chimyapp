FROM golang:1.23.2-alpine

WORKDIR /app

ADD go.mod go.sum main.go ./

RUN go mod download

COPY . .

RUN go build -o main /app/main.go

EXPOSE 8080

CMD ["go", "run", "main.go"]
