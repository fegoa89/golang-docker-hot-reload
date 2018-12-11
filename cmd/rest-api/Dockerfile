FROM golang:1.10

WORKDIR /home/fernando/src/github.com/fegoa89/golang-docker-hot-reload

COPY . .

RUN ["go", "get", "github.com/go-playground/justdoit"]

ENTRYPOINT justdoit -watch="./" -include="(.+\\.go|.+\\.c)$" -build="go build ./cmd/rest-api/" -run="../../rest-api"
