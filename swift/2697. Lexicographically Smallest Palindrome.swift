class Solution {
    func makeSmallestPalindrome(_ s: String) -> String {
        let n = s.count
        var s = Array(s)

        for i in 0..<n/2 {
            if s[i] == s[n-i-1] { continue }
            if s[i] < s[n-i-1] {
                s[n-i-1] = s[i]
            } else {
                s[i] = s[n-i-1]
            }
        }
        return String(s)
    }
}
