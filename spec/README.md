# Urchin Spec

Urchin is not fully specified yet, we're still working out a lot of the basic
details.

## Data Types

### Primatives

| Type | Length (bytes) |         Description          |
| :--: | :------------: | :--------------------------: |
|  u8  |       1        |    Unsigned 8-bit integer    |
|  i8  |       1        |     Signed 8-bit integer     |
| u16  |       2        |   Unsigned 16-bit integer    |
| i16  |       2        |    Signed 16-bit integer     |
| u32  |       4        |   Unsigned 32-bit integer    |
| i32  |       4        |    Signed 32-bit integer     |
| u64  |       8        |   Unsigned 64-bit integer    |
| i64  |       8        |    Signed 64-bit integer     |
| u128 |       16       |   Unsigned 128-bit integer   |
| i128 |       16       |    Signed 128-bit integer    |
| f32  |       4        | 32-bit floating point number |
| f64  |       8        | 64-bit floating point number |
| bool |       1        |       A boolean value        |
| char |       4        | 4-byte unicode scalar value  |

### Compound Types

```ur
// tuples
let tup: (u8, u32, f32);
let tup2 = (5, 37.64, true, '🔥');

let (x, y, z, w) = tup2;
let r = tup2[0];

// arrays
let arr: u64[10];
let arr2 = [1, 2, 3, 4, 5, 6, 7, 8];
let b = arr2[4];

// structs
struct person {
  name: char[50];
  age: u8;
  cool: bool;
};

let p: person;
p.name = "Prometheus";
p.age = 200;
p.cool = true;

let p2: person = {
  name: "Zeus",
  age: 25,
  cool: false
};
```

## Modules

If ECMA has done anything right, it has to be the way modules are implemented in
javascript. Low-level languages deserve better.

Third party imports in urchin are simply URLs that one can inspect with ease.
This means that modules are not distributed through a centralized platform. That
being said, the urchin team is working on creating a module repository for
discovery purposes.

```ur
// Import from standard library
import { printf } from "https://urchin.land/std@0.1.0/io/mod.ur";

// Import from local module
import { add } from "./add.ur";
```

Typing out fully qualified URLs is painful, so we are working on a way to
specify something similar to import-maps. TBD.

## Macros

TBD.
