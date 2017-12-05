.PHONY: build

build:
	docker build -t alexejk/dynamodb:latest .
ifndef BUILD_NUM
	$(warning No build number is defined, skipping build number tag.)
else
	docker build -t alexejk/dynamodb:$(BUILD_NUM) .	
endif