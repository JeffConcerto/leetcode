class Solution {
    func canBeIncreasing(_ nums: [Int]) -> Bool {
        var nums = nums
        var i = 1
        var hasAtLeastOneGreater = false
        
        while i < nums.count {
            if nums[i-1] >= nums[i] {
                if hasAtLeastOneGreater {return false}
                hasAtLeastOneGreater = true
                if i > 1 && nums[i-2] >= nums[i] {
                    nums.remove(at: i)
                } else {
                    nums.remove(at: i-1)
                }
                i = i == 1 ? 1 : i-1
            } else {
                i += 1
            }
        }
        
        return true
    }
}
