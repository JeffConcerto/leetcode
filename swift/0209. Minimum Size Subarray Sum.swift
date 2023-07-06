class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var left = 0
        var right = 0

        var total = nums[left]
        var length = 10_000_000
        while left < nums.count {
            if total >= target {
                length = min(length,right+1-left)
                total -= nums[left]
                left += 1
            } else if right+1 < nums.count {
                right += 1
                total += nums[right]
            } else { 
                break
            }
        }
        
         if total >= target {
            length = min(length,right+1-left)
         }
         return length == 10_000_000 ? 0 : length
    }
}
