class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var s = Array(s)
        var left = 0
        var right = 0
        var charCount = [Character: Int]()
        var maxLength = 0
        while right < s.count {
            charCount[s[right], default: 0] += 1
            let windowCount = right - left + 1
            if windowCount - charCount.values.max()! > k {
                charCount[s[left]]! -= 1
                left += 1
            }
            maxLength = max(maxLength, right-left+1)
            
            right += 1
        }
        return maxLength
    }
}
