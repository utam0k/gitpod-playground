# Uses eStargz-formatted golang image as the base image. This isn't pulled here.
FROM ghcr.io/stargz-containers/golang:1.15.3-buster-esgz AS dev

# Copies the source code from the context, without waiting for the pull completion of the base image.
COPY ./hello.go /hello.go

# Runs go compiler on that base image, without waiting for the pull completion of the base image.
RUN go build -o /hello /hello.go

# Harvesting the result binary.
FROM scratch
COPY --from=dev /hello /
ENTRYPOINT [ "/hello" ]