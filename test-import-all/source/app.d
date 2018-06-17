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

void main() {
	import_all_suba;
	import_subb_moda_only;
	import_subb_modb_only;
}
