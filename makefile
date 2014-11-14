
all: build/Example.js

build/Example.js:
	elm --bundle-runtime --only-js --make Example.elm

.PHONY: clean

clean:
	rm -rf build
	rm -rf cache

