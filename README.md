## Playing with dub sub packaging

* `lib` is a library that has multiple sub packages
* `test-import-all` is an application that uses the whole of `lib`
* `test-import-suba` is an application that paritally uses `lib`

`lib` has two sub pacakges - `suba` and `subb`, which in turn each have to inner modules - `moda` and `modb`. The dir structure is:

```
lib/
├── dub.json
├── source
│   └── package.d
├── suba
│   ├── dub.json
│   └── source
│       └── lib
│           └── suba
│               ├── moda
│               │   └── package.d
│               ├── modb
│               │   └── package.d
│               └── package.d
└── subb
    ├── dub.json
    └── source
        └── lib
            └── subb
                ├── moda
                │   └── package.d
                └── modb
                    └── package.d
```

Where `suba/package` exposes the function in modules `suba.moda` and `suba.modb` publicly. And `subb` has no package so `subb`'s submodule need to be explicitly imported.

In the `lib` folder:

```bash
dub test :suba # should run tests for suba
dub test :subb # should run tests for subb
dub test # will run tests for suba and subb
```

In the `test-import-all` or `test-import-suba` folder:

```bash
dub run # imports lib and runs test/source/app.d
```

### Subpackage directory structure

The directory structure in `lib` has to be exact. The subpacakges have to basically have the same folder structure as a the main package, but hoisted one level up. So instead of `lib/source/suba/...` you need to have `lib/suba/source/lib/suba/...`.

### Testing all subpackages

Will not work by default. You need to add the the `sourcePaths` of the subpackages in `lib/dub.json` and then they will be picked up with dub test
