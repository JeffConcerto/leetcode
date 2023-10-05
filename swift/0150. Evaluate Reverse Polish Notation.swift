class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var tokens = tokens

        func eval() -> Int {
            guard !tokens.isEmpty else { return 0 }
            let token = tokens.removeLast()
            switch token {
                case "*":
                return eval() * eval()
                case "/":
                let divisor = eval()
                let dividend = eval()
                return dividend / divisor
                case "+":
                return eval() + eval()
                case "-":
                let secondNum = eval()
                let firstNum = eval()
                return firstNum - secondNum
                default:
                return Int(token)!
            }
        }

        return eval()
    }
}
