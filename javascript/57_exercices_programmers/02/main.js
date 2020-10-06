const countingChar = require('./countingchar');

var stdio = require('stdio');

stdio.question('What is the input string ?', function (err, input) {
  result = countingChar(input);
  console.log(result)
});