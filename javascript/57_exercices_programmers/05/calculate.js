const INPUT_ERROR = "#INPUT ERROR"
const DIVISION_BY_ZERO_ERROR = "#ERROR DIVISION BY 0"

function process(s1, s2) {
    n1 = convert(s1);
    n2 = convert(s2);
    return TryToCalculate(n1, n2)
}

function TryToCalculate(n1, n2) {
    if ( isInvalidNumber(n1, n2) ) return INPUT_ERROR
    return calculate(n1, n2)
}

function isInvalidNumber(n1, n2) {
    return isNaN(n1) || isNaN(n2) || n1 < 0 || n2 < 0
}

function calculate(n1, n2) {
    result_add = add(n1, n2)
    result_minus = minus(n1, n2)
    result_times = multiplicate(n1, n2)
    result_division = divise(n1, n2)
    return getStringResult(result_add, result_minus, result_times, result_division);
}

function getStringResult(addition, substraction, multiplication, division) {
    result = 
`${addition}
${substraction}
${multiplication}
${division}`
    return result;
}

function convert(s) {
    return Number(s)
}

function add(n1, n2) {
    result = n1 + n2
    return `${n1} + ${n2} = ${result}`
}

function minus(n1, n2) {
    result = n1 - n2
    return `${n1} - ${n2} = ${result}`
}

function multiplicate(n1, n2) {
    result = n1 * n2
    return `${n1} * ${n2} = ${result}`
}

function divise(n1, n2) {
    if ( n2 === 0 ) return DIVISION_BY_ZERO_ERROR
    result = Math.floor(n1 / n2)
    return `${n1} / ${n2} = ${result}`
}

module.exports = {process, convert, add, minus, multiplicate, divise};