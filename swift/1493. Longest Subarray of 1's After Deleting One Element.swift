class Solution {
    func longestSubarray(_ nums: [Int]) -> Int {
        var result = 0
        var left = 0
        var start = 0
        var canSkip = true
        var lastZero = -1

        while left < nums.count {
            if nums[left] == 0 {
                if canSkip {
                    lastZero = left
                    canSkip = false
                    left += 1
                } else {
                    let count = left-1-start
                    result = max(result, count)
                    left = lastZero + 1
                    start = left
                    canSkip = true
                    lastZero = 0
                }
            } else {
                left += 1
            }
        }
        var count = canSkip ? left-start : left-1-start
        if start == 0 && canSkip { count -= 1}
        return max(result,count)
    }
}
