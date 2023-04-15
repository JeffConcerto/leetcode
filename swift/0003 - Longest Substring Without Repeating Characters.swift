class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = Array(s)
        var indexMap = [Character: Int]()
        var maxCount = 0
        var start = 0

        for i in 0..<s.count {
            if let previousIndex = indexMap[s[i]] {
                if previousIndex >= start {
                    start = previousIndex + 1
                }
            }

            indexMap[s[i]] = i
            maxCount = max(maxCount, i-start+1)
        }

        return maxCount
    }
}
