# Use the official Go image as the base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Run 'go mod tidy' to ensure the Go module dependencies are up to date
RUN go mod tidy

# Build the Go application
RUN go build -o main ./cmd

EXPOSE 3030

# Set the entry point for the container
ENTRYPOINT ["./main"]

