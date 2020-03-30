FROM golang

# set a directory for the app
WORKDIR /go/src/app

# copy all the files to the container
COPY . .

# install dependencies & app
RUN go get -d -v ./...
RUN go install -v ./...

# tell the port number the container should expose
EXPOSE 8888

# run the command
CMD ["app"]