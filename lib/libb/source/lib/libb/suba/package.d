module lib.libb.suba;

public void fa() {
    import std.stdio : writeln;
    import std.traits : moduleName;
    writeln(moduleName!fa);
}

unittest {
    fa;
}
