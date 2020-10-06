function countingChar(value) {
    prefix = getPrefix(value)
    len = value.length
    return `${prefix}has ${len} characters`;
}

function getPrefix(value) {
    if ( value.length === 0 ) {
        return ""
    }
    return value + " "
}

module.exports = countingChar;