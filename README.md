## Playing with dub sub packaging

* `lib` is a library that has multiple sub packages
* `test` is an application that uses it

`lib` has two sub pacakges - `liba` and `libb`, which in turn each have to inner modules - `suba` and `subb`. The dir structure is:

lib/
├── dub.json
├── liba/
│   ├── dub.json
│   ├── package.d
│   └── source/
│       ├── suba/
│       │   └── package.d
│       └── subb/
│           └── package.d
└── libb
    ├── dub.json
    └── source/
        ├── suba/
        │   └── package.d
        └── subb/
            └── package.d

Where `liba/package` exposes the function in modules `liba.suba` and `libb.subb` publicly. And `libb` has no package so `libb`'s submodule need to be explicitly imported.

In the `lib` folder:

```bash
dub test :liba # should run tests for liba
dub test :libb # should run tests for libb
dub test # should run all tests
```