class Solution {
    func getMaximumGenerated(_ n: Int) -> Int {
        guard n > 0 else { return 0 }
        guard n > 1 else { return 1 }
        
        var nums = Array(repeating: 0, count: n + 1)
        nums[1] = 1
        
        var i = 1
        
        while i * 2 <= n {
            nums[2 * i] = nums[i]
            if i * 2 + 1 <= n {
                nums[i * 2 + 1] = nums[i] + nums[i + 1]
            }
            
            i += 1
        }
        
        return nums.max()!
    }
}
