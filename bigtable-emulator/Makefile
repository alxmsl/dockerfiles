CMD=$(filter-out $@,$(MAKECMDGOALS))
VERSION=$(word 1,$(CMD))

.PHONY: docker
docker:
	docker build -t alxmsl/bigtable-emulator:${VERSION} ./${VERSION}
	docker tag alxmsl/bigtable-emulator:${VERSION} alxmsl/bigtable-emulator:latest
	docker push alxmsl/bigtable-emulator:${VERSION}
	docker push alxmsl/bigtable-emulator:latest

%:
	@:
