module test_import_all;

string import_all_suba() {
	import lib.suba;
	return fa ~ ":" ~ fb;
}

string import_subb_moda_only() {
	import lib.subb.moda;
	return fa;
}

string import_subb_modb_only() {
	import lib.subb.modb;
	return fb;
}

version (roottest) {} else
void main() {
	import std.stdio: writeln;
	writeln("running: "
		~ "\n  " ~ import_all_suba
		~ "\n  " ~ import_subb_moda_only
		~ "\n  " ~ import_subb_modb_only
	);
}

unittest {
	import std.stdio: writeln;
	writeln("unittest: test all");
}