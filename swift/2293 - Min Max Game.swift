class Solution {
    func minMaxGame(_ nums: [Int]) -> Int {
        var nums = nums
        
        while nums.count > 1 {
            var newNums = Array(repeating: 0, count: nums.count / 2)
            
            for i in 0..<newNums.count {
                if i % 2 == 0 {
                    newNums[i] = min(nums[2 * i], nums[2 * i + 1])
                } else {
                    newNums[i] = max(nums[2 * i], nums[2 * i + 1])
                }
            }
            
            nums = newNums
        }
        
        return nums[0]
    }
}
