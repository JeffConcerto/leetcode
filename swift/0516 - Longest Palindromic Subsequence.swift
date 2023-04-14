class Solution {
    func longestPalindromeSubseq(_ s: String) -> Int {
        var n = s.count
        let s = Array(s)

        var memo = Array(repeating: Array(repeating: 0, count: n), count: n)

        func lps(_ left: Int, _ right: Int) -> Int {
            if memo[left][right] != 0 { return memo[left][right] }

            if left > right { return 0 }

            if left == right { return 1 }

            if s[left] == s[right] {
                memo[left][right] = lps(left+1, right-1) + 2
            } else {
                memo[left][right] = max(lps(left, right-1), lps(left+1, right))
            }

            return memo[left][right]
        }

        return lps(0, n-1)
    }
}
