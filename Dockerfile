FROM golang:latest

RUN mkdir /app-bin

WORKDIR /app

COPY . .

# RUN go build -o main .

# CMD ["./main"]

# hot reload

# install hot reload package
RUN ["go", "get", "github.com/githubnemo/CompileDaemon"]

#run hot reload
ENTRYPOINT CompileDaemon -log-prefix=false -build="go build -o /app-bin/main ." -command="/app-bin/main"