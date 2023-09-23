class Solution {
    func longestStrChain(_ words: [String]) -> Int {
        let words = words.sorted { $0.count < $1.count }
        var memo = Array(repeating: Array(repeating: 0, count: words.count), count: words.count)

        func dfs(_ i: Int, _ j: Int) -> Int {
            if j == words.count { return 0 }
            if i == j { return dfs(i,j+1)}
            if memo[i][j] != 0 { return memo[i][j] }
            var result = 0

            if isBefore(words[i], words[j]) {
                result += 1 + dfs(j,j+1)
            }

            result = max(result, dfs(i,j+1))
            memo[i][j] = result
            return result
        }

        var result = 1
        for i in 0..<words.count-1 {
            if result > words.count-i-1 { break }
            result = max(result, 1 + dfs(i,i+1))
        }
        
        return result
    }


    private func isBefore(_ word1: String, _ word2: String) -> Bool {
        guard word1 != word2 && word1.count+1 == word2.count else { return false }
        let word1 = Array(word1)
        let word2 = Array(word2)

        var i = 0
        var j = 0
        var usedSkip = false

        while i < word1.count && j < word2.count {
            if word1[i] == word2[j] {
                i += 1
                j += 1
            } else {
                j += 1
                if usedSkip { return false }
                usedSkip = true
            }
        }

        return i == word1.count
    }
}
