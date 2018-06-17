module test_import_suba;

version (roottest) {} else
void main() {
	// import lib.subb.modb; // error
	import std.stdio: writeln;
	import lib.suba;
	writeln("running: ", fa, ", ", fb);
}

unittest {
	import std.stdio: writeln;
	writeln("unittest: test suba");
}