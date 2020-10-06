const {process, convert, add, minus, multiplicate, divise} = require('./calculate');

test('given "0" and "0" should return all results to 0', () => {
    expected = 
`0 + 1 = 1
0 - 1 = -1
0 * 1 = 0
0 / 1 = 0`
    expect(process("0","1")).toBe(expected);
});

test("given 1 and 2 when add should return 1 + 2 = 3", () => {
    expect(add(1, 2)).toBe("1 + 2 = 3")    
})

test("given 1 and 2 when minus should return 1 - 2 = -1", () => {
    expect(minus(1, 2)).toBe("1 - 2 = -1")    
})


test("given 1 and 2 when multiplicate should return 1 * 2 = 2", () => {
    expect(multiplicate(1, 2)).toBe("1 * 2 = 2")    
})

test("given 1 and 2 when divise should return 1 / 2 = 0", () => {
    expect(divise(1, 2)).toBe("1 / 2 = 0")    
})

test("given 0 and 0 when divise should return #ERROR DIVISION BY 0", () => {
    expect(divise(0, 0)).toBe("#ERROR DIVISION BY 0")    
})

test("given '3' when convert should return 3", () => {
    expect(convert("3")).toBe(3)    
})

test("given '3' when convert should return 3", () => {
    expect(convert("3")).toBe(3)    
})

test("given 'a' and '2' when process should return #INPUT ERROR", () => {
    expect(process("a", "2")).toBe("#INPUT ERROR")    
})

test("given '4' and 'a' when process should return #INPUT ERROR", () => {
    expect(process("4", "a")).toBe("#INPUT ERROR")    
})

test("given '-1' and '8' when process should return #INPUT ERROR", () => {
    expect(process("-1", "8")).toBe("#INPUT ERROR")    
})

test("given '3' and '-1' when process should return #INPUT ERROR", () => {
    expect(process("3", "-1")).toBe("#INPUT ERROR")    
})
