FROM golang:1.21

WORKDIR /app

# Sao chép toàn bộ file (bao gồm cả thư mục safe-files) vào /app
COPY . .

RUN go mod tidy
RUN go build -o main main.go

EXPOSE 8080

CMD ["./main"]
