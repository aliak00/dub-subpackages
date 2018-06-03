## Playing with dub sub packaging

* `lib` is a library that has multiple sub packages
* `test` is an application that uses it

In the `lib` folder:

```bash
dub test :liba # should run tests for liba
dub test :libb # should run tests for libb
```