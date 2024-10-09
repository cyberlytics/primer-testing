function factorial (n) {
  if (n < 0) {
    return 0;
  }
  let f=1; 
  if (n>1) f = n * factorial(n-1);
  return f
}
