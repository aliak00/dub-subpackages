## Playing with dub sub packaging

* `lib` is a library that has multiple sub packages
* `test` is an application that uses it

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
dub test :liba # should run tests for liba
dub test :libb # should run tests for libb
dub test # will run test for main lib and not sub packages
```