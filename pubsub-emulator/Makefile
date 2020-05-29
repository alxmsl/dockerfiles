CMD=$(filter-out $@,$(MAKECMDGOALS))
VERSION=$(word 1,$(CMD))

.PHONY: docker
docker:
	docker build -t alxmsl/pubsub-emulator:${VERSION} ./${VERSION}
	docker tag alxmsl/pubsub-emulator:${VERSION} alxmsl/pubsub-emulator:latest
	docker push alxmsl/pubsub-emulator:${VERSION}
	docker push alxmsl/pubsub-emulator:latest

%:
	@:
