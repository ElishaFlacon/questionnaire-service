FROM golang:1.22

COPY . /go/src/bitbucket.code.company-name.com.au/scm/code

WORKDIR /go/src/bitbucket.code.company-name.com.au/scm/code/

RUN CGO_ENABLED=0 go build main.go

FROM alpine:3.7

RUN apk add --no-cache ca-certificates

COPY --from=0 /go/src/bitbucket.code.company-name.com.au/scm/code/main .

CMD ["./main"]