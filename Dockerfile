FROM golang:latest

#ディレクトリ作成
WORKDIR /go/src/go-image
#ホストOSのmain.goをWORKDIRにコピー
COPY main.go .

#バイナリを生成
RUN go install -v .

#バイナリを実行
CMD ["go-image"]