CMD=$(filter-out $@,$(MAKECMDGOALS))
VERSION=$(word 1,$(CMD))

.PHONY: image
image:
	docker buildx build --push --platform linux/arm64,linux/amd64 --tag alxmsl/firebase-tools:${VERSION} ./${VERSION}

%:
	@:
