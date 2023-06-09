build: 
	@go build -o bin/gochain

run: build
	@./bin/docker

test: 
	@go test -v ./... -v

proto:
	@protoc --go_out=. --go_opt=paths=source_relative \
	--go-grpc_out=. --go-grpc_opt=paths=source_relative \
	proto/*.proto

.PHONY: proto