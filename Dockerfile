FROM golang:1.12.1-alpine
MAINTAINER mateuszmierzwinski@gmail.com
# installing go dependencies
RUN apk add git graphviz libc-dev gcc make font-bitstream-type1 ghostscript-fonts
RUN go get github.com/golang/mock/gomock
RUN go install github.com/golang/mock/mockgen
RUN go get github.com/golang/dep/cmd/dep
ENV CGO_ENABLE=0
VOLUME /app