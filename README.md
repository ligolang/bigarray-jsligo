# Bigarray-jsligo

`Bigarray` is an ordered data structure.

`Bigarray` are one dimensional arrays, they're represented as a list internally.

Like lists, `Bigarray` items must have the same type.

## Usage

This library is aimed to be used as module and can be consumed as a package from LIGO registry.
While we recommend you consult the [documentation](https://ligolang.org/docs/advanced/package-management/), here's a quick tutorial.


1. `ligo install`
Create an empty `package.json` (just `{}`), and run,

```sh
ligo install bigarray-jsligo
```

to install the package.

2. Import the package modules with relative paths. Example: `# import "bigarray-cameligo/lib/bigarray.mligo`


```jsligo
#import "bigarray-jsligo/lib/bigarray.jsligo" "Bigarray"
const test_fill = (() => {
  assert(Bigarray.fill(4, 10) == list([10,10,10,10]));
  assert(Bigarray.fill(4, "foo") == list(["foo","foo","foo","foo"]));
})();
```

## Dev

Just run `make` or `make test` to run the tests

You can also override `make` parameters by running :
```sh
make test ligo_compiler=<LIGO_EXECUTABLE> PROTOCOL_OPT="--protocol <PROTOCOL>"
```
