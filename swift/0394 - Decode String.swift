class Solution {
    func decodeString(_ s: String) -> String {
        var current = ""
        var numstack = [Int]()
        var num = 0
        var stringStack = [String]()
        for char in s {
            if let number = char.wholeNumberValue {
                num = num * 10 + number
            } else if char == "]" {
                let count = numstack.popLast() ?? 1
                let previousString = stringStack.popLast() ?? ""
                current = String(repeating: current, count: count)
                current = previousString + current
                
            } else if char == "[" {
                numstack.append(num)
                num = 0
                stringStack.append(current)
                current = ""
            } else {
                current += String(char)
            }
        }


        return current
    }
}
