// Translated from NeetCode:
class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        let word1 = Array(word1)
        let word2 = Array(word2)
        var dp = Array(repeating: Array(repeating: Int.max, count: word2.count+1), count: word1.count+1)

        for j in 0..<dp[0].count {
            dp[word1.count][j] = word2.count - j
        }

        for i in 0..<dp.count {
            dp[i][word2.count] = word1.count - i
        }

        for i in 0..<word1.count {
            for j in 0..<word2.count {
                let row = word1.count-1-i
                let col = word2.count-1-j
                print(row,col)
                if word1[row] == word2[col] {
                    dp[row][col] = dp[row+1][col+1]
                } else {
                    dp[row][col] = 1 + min(dp[row+1][col], dp[row][col+1], dp[row+1][col+1])
                }
            }
        }

        return dp[0][0]   
        }
}
