.PHONY: build
build: clean dist
	go build -o ./dist/ .

dist:
	mkdir -p dist

.PHONY: install
install: build
	cp ./dist/curlie ~/.local/bin/

.PHONY: clean
clean:
	rm -rf ./dist
