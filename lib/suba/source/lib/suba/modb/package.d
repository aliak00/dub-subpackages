module lib.suba.modb;

public void fb() {
    import std.stdio : writeln;
    import std.traits : moduleName;
    writeln(moduleName!fb);
}

unittest {
    fb;
}
