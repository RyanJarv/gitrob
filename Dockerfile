FROM golang
ENV GOPATH=
ENV GO111MODULE=on

COPY ./ ./

#RUN go get github.com/michenriksen/gitrob
#RUN go mod init github.com/michenriksen/gitrob
#RUN rm Gopkg*
RUN go build -o /usr/local/bin/gitrob main.go

#RUN apk add --no-cache git
#RUN wget -O gitrob.zip https://github.com/michenriksen/gitrob/releases/download/v2.0.0-beta/gitrob_linux_amd64_2.0.0-beta.zip && \
#	unzip gitrob.zip && \
#	cp gitrob /usr/local/bin/gitrob

ENTRYPOINT ["/usr/local/bin/gitrob"]
