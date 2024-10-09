describe("Factorial Tests", () => {

  it("should return 1 for factorial of 0", () => {
    expect(factorial(0)).toEqual(1);
  });

  it("should return 0 for negative numbers", () => {
    expect(factorial(-1)).toEqual(0);
    expect(factorial(-1000)).toEqual(0);
  });

  it("should return correct factorial for positive numbers", () => {
    expect(factorial(1)).toEqual(1);
    expect(factorial(2)).toEqual(2);
    expect(factorial(3)).toEqual(6);
  });

});

