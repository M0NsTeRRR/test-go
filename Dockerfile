FROM golang:1.24.5

ARG VERSION=development
ARG SOURCE_DATE_EPOCH=0

# Set destination for COPY
WORKDIR /app

# Download Go modules
COPY . ./

# Build
RUN CGO_ENABLED=0 go build -trimpath -a -o hello -ldflags '-w -X main.version=$VERSION -X main.buildTime=$SOURCE_DATE_EPOCH -extldflags "-static"'

# Run
CMD ["/hello"]
