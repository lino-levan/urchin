# Urchin Lang

An experimental low-level C-like language which attempts to fix undefined
behavior in C as well as add some modern syntactic flavor. It is built on the
LLVM toolchain.

## Usage

The recommended way to interact with urchin is through the `reef` CLI.

```bash
$ reef run https://urchin.land/std/examples/hello.ur
Hello world!
```

## Syntax

The syntax of the language is still getting ironed out! Here is a quick demo of
the language though:

```un
import { printf } from "https://urchin.land/std/io/mod.ur";

fn main(): u8 {
  printf("Hello world!);

  return 0;
}
```
