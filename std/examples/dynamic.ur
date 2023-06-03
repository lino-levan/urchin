import { malloc, free } from "https://urchin.land/std/mem/mod.ur";

fn main(): uint8 {
  // Allocate 100 bytes
  let x: u8[] = malloc(100);

  // Set the memory
  for(var i = 0; i < 100; i++) {
    x[i] = i;
  }

  // Free the memory allocated
  free(x);

  return 0;
}