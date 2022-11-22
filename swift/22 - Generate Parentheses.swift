// Assisted Solutions:

// Backtracking:
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var answer = [String]()
        backtrack(&answer, "", 0, 0, n)
        return answer
    }
    
    private func backtrack(_ answer: inout [String], _ current: String, _ open: Int, _ close: Int, _ max: Int) {
        guard current.count < max * 2 else {
            answer.append(current)
            return
        }
        
        if open < max {
            backtrack(&answer, current + "(", open+1, close, max)
        }
        
        if close < open {
            backtrack(&answer, current + ")", open, close+1, max)
        }
    }

}

// Brute Force:
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
