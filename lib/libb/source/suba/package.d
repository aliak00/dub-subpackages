module lib.libb.suba;

public void f() {
    import std.stdio : writeln;
    import std.traits : moduleName;
    writeln(moduleName!f);
}

unittest {
    f;
}