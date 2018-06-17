module test_import_all;

void import_all_suba() {
	import lib.suba;
	fa;
	fb;
}

void import_subb_moda_only() {
	import lib.subb.moda;
	fa;
}

void import_subb_modb_only() {
	import lib.subb.modb;
	fb;
}

version (roottest) {} else
void main() {
	import_all_suba;
	import_subb_moda_only;
	import_subb_modb_only;
}

unittest {
	import std.stdio: writeln;
	"import all tests".writeln;
}