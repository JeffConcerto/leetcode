// Assisted Solution:
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var combinations = [String]()
        var current = Array(repeating: Character("-"), count: n * 2)
        generateAll(current: &current, position: 0, result: &combinations)
        return combinations
    }
    
    private func generateAll(current: inout [Character], position: Int, result: inout [String]) {
        guard position != current.count else {
            if isValidCombination(current) {
                result.append(String(current))
            }
            return
        }
        
        current[position] = "("
        generateAll(current: &current, position: position + 1, result: &result)
        current[position] = ")"
        generateAll(current: &current, position: position + 1, result: &result)
    }
    
    private func isValidCombination(_ current: [Character]) -> Bool {
        var balance = 0
        for char in current {
            balance += char == "(" ? 1 : -1
            if balance < 0 { return false }
        }
        
        return balance == 0
    }
}
