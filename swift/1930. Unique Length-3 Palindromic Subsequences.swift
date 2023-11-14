class Solution {
    func countPalindromicSubsequence(_ s: String) -> Int {
        let s = Array(s)
        var seen = Set<Character>()
        var count = 0
        for i in 0..<s.count-2 {
            if seen.contains(s[i]) { continue }
            var j = s.count-1
            while j > i+1 && s[j] != s[i] {
                j -= 1
            }

            if s[i] == s[j] {
                var between = Set<Character>()
                for k in i+1..<j {
                    between.insert(s[k])
                }
                count += between.count
                seen.insert(s[i])
            }
        }

        return count
    }
}
