module lib.subb.modb;

public string fb() {
    import std.traits : moduleName;
    return moduleName!fb;
}

unittest {
    import std.stdio : writeln;
    writeln("unittest: ", fb);
}
