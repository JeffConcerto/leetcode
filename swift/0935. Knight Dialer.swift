class Solution {
    func knightDialer(_ n: Int) -> Int {
        let mod = 1_000_000_007
        var dp = Array(repeating: Array(repeating: 0, count: n), count: 10)

        for i in 0..<10 {
            dp[i][0] = 1
        }

        for i in 1..<n {
            dp[0][i] = (dp[4][i-1] + dp[6][i-1]) % mod
            dp[1][i] = (dp[8][i-1] + dp[6][i-1]) % mod
            dp[2][i] = (dp[7][i-1] + dp[9][i-1]) % mod
            dp[3][i] = (dp[8][i-1] + dp[4][i-1]) % mod
            dp[4][i] = (dp[3][i-1] + dp[9][i-1] + dp[0][i-1]) % mod
            dp[5][i] = 0
            dp[6][i] = (dp[7][i-1] + dp[1][i-1] + dp[0][i-1]) % mod
            dp[7][i] = (dp[2][i-1] + dp[6][i-1]) % mod
            dp[8][i] = (dp[1][i-1] + dp[3][i-1]) % mod
            dp[9][i] = (dp[4][i-1] + dp[2][i-1]) % mod
        }

        var answer = 0
        for i in 0..<10 {
            answer += dp[i][n-1]
            answer %= mod
        }
        return answer
    }
}
