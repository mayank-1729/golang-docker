#Pull golang image based upon alpine3.14
FROM golang:1.17.7-alpine3.14

WORKDIR /usr/src/app

COPY . .

RUN go mod download && go mod verify
RUN go build -v -o  main

CMD ["main"] 

