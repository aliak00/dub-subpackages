all: test suba subb lib

test:
	dub build :test

suba:
	dub build :suba

subb:
	dub build :subb

lib:
	dub build :lib
