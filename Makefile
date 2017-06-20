# image name
IMAGE_NAME=go-docker

# container name
CONTAINER_NAME=cool-stuff

# builds the image
build:
		docker build -t ${IMAGE_NAME} .

# compiles and run inside docker, sets the code as a volume
run:
		docker run -it -v $(PWD):/go/src/app --rm --name ${CONTAINER_NAME} ${IMAGE_NAME} go run main.go

# just compiles inside the container
compile:
		docker run --rm -v $(PWD):/go/src/app -w /go/src/app golang:1.8 go build
