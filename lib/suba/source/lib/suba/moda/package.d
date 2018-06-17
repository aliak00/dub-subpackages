module lib.suba.moda;

string fa() {
    import std.traits : moduleName;
    return moduleName!fa;
}

unittest {
    import std.stdio : writeln;
    writeln("unittest: ", fa);
}
