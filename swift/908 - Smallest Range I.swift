// Needed help to get the answer

class Solution {
    func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
        guard nums.count > 1 else {
            return nums[0] - nums[0]
        }
        
        let minV = nums.min()!
        let maxV = nums.max()!
        
        return max(0, maxV - k - minV - k)
        
    }
}

