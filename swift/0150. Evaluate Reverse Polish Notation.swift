// Stack Solution:
class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var operands = [Int]()
        var sum = 0
        for token in tokens {
            if let number = Int(token) {
                operands.append(number)
            } else {
                let token2 = operands.removeLast()
                let token1 = operands.removeLast()
                operands.append(doOperation(token,token1, token2))
            }
        }

        return operands[0]
    }

    private func doOperation(_ operation: String, _ token1: Int, _ token2: Int) -> Int {
        switch operation {
            case "+":
            return token1 + token2
            case "-":
            return token1 - token2
            case "/":
            return token1 / token2
            case "*":
            return token1 * token2
            default:
            return 0
        }
    }
}


// Recursive Solution:
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
