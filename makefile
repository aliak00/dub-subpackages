all: test suba subb lib

test:
	cd test; dub build

suba:
	dub build :suba

subb:
	dub build :subb

lib:
	dub build :lib
