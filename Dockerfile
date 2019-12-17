FROM golang:1.13.5-alpine
MAINTAINER mateuszmierzwinski@gmail.com
# installing go dependencies
RUN apk add git graphviz libc-dev gcc make font-bitstream-type1 ghostscript-fonts protobuf protobuf-c openjdk8 maven
RUN go get golang.org/x/tools/go/packages
RUN go get github.com/golang/mock/gomock
RUN go install github.com/golang/mock/mockgen
RUN go get github.com/golang/dep/cmd/dep
RUN go get google.golang.org/grpc
RUN go get github.com/golang/protobuf/protoc-gen-go
RUN go install github.com/golang/protobuf/protoc-gen-go
ENV CGO_ENABLE=0
VOLUME /app
