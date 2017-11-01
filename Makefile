IMAGE_NAME := waja/dockerscan

build:
	docker build --rm -t $(IMAGE_NAME) .
	
run:
	@echo docker run --rm -it $(IMAGE_NAME) 
	
shell:
	docker run --rm -it --entrypoint sh $(IMAGE_NAME) -l

test: build
	@if ! [ "$$(docker run --rm -it waja/dockerscan -h | head -1 | cut -d' ' -f2)" = "dockerscan" ]; then exit 1; fi
