all: test liba libb lib

test:
	dub build :test

liba:
	dub build :liba

libb:
	dub build :libb

libb:
	dub build :lib
