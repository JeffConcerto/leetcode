class Solution {
    func countSubstrings(_ s: String) -> Int {
        let s = Array(s)
        var left = 0
        var right = 0
        var count = 0
        while left < s.count {
            count += isPal(left,right, s) ? 1 : 0
            right += 1
            if right == s.count {
                left += 1
                right = left
            }
        }
        return count
    }

    func isPal(_ left: Int, _ right: Int, _ s: [Character]) -> Bool {
        var left = left
        var right = right

        while left < right {
            if s[left] != s[right] { return false }
            left += 1
            right -= 1
        }
        
        return true
    }
}
