all: test
precommit: gofmt-staged

gofmt-staged:
	./gofmt-staged.sh

testdata:
	git clone https://github.com/schmeister/go-face-testdata testdata

test: testdata
	go test -v
