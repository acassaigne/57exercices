const calculate = require('./calculate');

var readline = require('readline-sync');
var firstValue;

firstValue = readline.question('What is the first input number ?');
secondValue = readline.question('What is the second input number ?');

console.log(firstValue)
console.log(secondValue)

result = calculate.process(firstValue, secondValue)

console.log(result)