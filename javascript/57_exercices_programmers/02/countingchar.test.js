const countingChar = require('./countingchar');

test('should return 0 given empty string', () => {
  expect(countingChar("")).toBe("has 0 characters");
});



test('should return 5 given Hello string', () => {
    expect(countingChar("Hello")).toBe("Hello has 5 characters");
  });
  
