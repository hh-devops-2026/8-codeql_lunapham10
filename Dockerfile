FROM golang:1.21

WORKDIR /app
COPY . .

RUN go mod tidy
RUN mkdir -p safe-files && echo "Hello World" > safe-files/hello.txt

RUN go build -o main main.go

EXPOSE 8080
CMD ["./main"]
