CMD=$(filter-out $@,$(MAKECMDGOALS))
VERSION=$(word 1,$(CMD))

.PHONY: docker
docker:
	docker build -t alxmsl/firestore-emulator:${VERSION} ./${VERSION}
	docker tag alxmsl/firestore-emulator:${VERSION} alxmsl/firestore-emulator:latest
	docker push alxmsl/firestore-emulator:${VERSION}
	docker push alxmsl/firestore-emulator:latest

%:
	@:
