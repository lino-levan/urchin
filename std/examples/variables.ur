fn main(): uint8 {
  let x = 10; // type inference (u8)
  var y: u8;

  // conditionals
  if(x == 10) {
    y = 3;
  }

  // loops
  for(var i = 0; i < 10; i++) {
    x += i;
  }

  return 0;
}