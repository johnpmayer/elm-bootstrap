
all:
	elm --only-js --make Example.elm

elm-runtime.js:
	cp $(elm -g) .
