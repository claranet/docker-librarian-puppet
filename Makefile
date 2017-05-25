tag=claranet/librarian-puppet:latest

.PHONY: image
image:
	docker build --tag $(tag) .

.PHONY: bash
bash: image
	docker run --rm -it --entrypoint=bash $(tag)
