FROM golang:1.12.1-alpine
MAINTAINER mateuszmierzwinski@gmail.com
# installing go dependencies
RUN apk add git graphviz libc-dev gcc make font-bitstream-type1 ghostscript-fonts
ADD https://github.com/protocolbuffers/protobuf/releases/download/v3.8.0/protoc-3.8.0-linux-x86_64.zip /
RUN unzip /protoc-3.8.0-linux-x86_64.zip
RUN go get golang.org/x/tools/go/packages
RUN go get github.com/golang/mock/gomock
RUN go install github.com/golang/mock/mockgen
RUN go get github.com/golang/dep/cmd/dep
RUN go get google.golang.org/grpc
RUN go get github.com/golang/protobuf/protoc-gen-go
ENV CGO_ENABLE=0
VOLUME /app
