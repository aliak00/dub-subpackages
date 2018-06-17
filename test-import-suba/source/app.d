module test_import_suba;

version (roottest) {} else
void main() {
	// import lib.subb.modb; // error
	import lib.suba;
	fa;
	fb;
}

unittest {
	import std.stdio: writeln;
	"import suba tests".writeln;
}