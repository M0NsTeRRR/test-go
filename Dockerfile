FROM golang:1.24.5

# Set destination for COPY
WORKDIR /app

# Download Go modules
COPY . ./

# Build
RUN CGO_ENABLED=0 GOOS=linux go build -o main.go

# Run
CMD ["/hello"]
