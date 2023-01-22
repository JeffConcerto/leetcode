class Solution {
    func partition(_ s: String) -> [[String]] {
        guard s.count > 1 else { return [[s]]}
        let s = Array(s)

        var results = [[String]]()

        func backtrack(_ i: Int, _ currentString: String, _ currentResult: [String], _ letterCount: Int) {
            guard s.count - i + letterCount + currentString.count == s.count else { return }
            guard i < s.count else {
                if currentResult.isEmpty || letterCount != s.count { return }
                results.append(currentResult)
                return
            }

            for j in i..<s.count {
                let string = currentString + String(s[i])
                if isPalindrome(string)  {
                    backtrack(j+1, "", currentResult + [string], letterCount + string.count)
                } 

                backtrack(j+1, string, currentResult, letterCount)
            }
        }

        backtrack(0, "", [], 0)

        return results
    }

    private func isPalindrome(_ string: String) -> Bool {
        guard string.count > 1 else { return true }
        let string = Array(string)
        for i in 0..<string.count/2 {
            guard string[i] == string[string.count-1-i] else { return false }
        }
        return true
    }
}
