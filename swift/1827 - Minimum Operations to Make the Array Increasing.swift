// Method 1
class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var nums = nums
        var totalOps = 0
        
        for index in 1..<nums.count {
            let prevalue = nums[index-1]
            let value = nums[index]
            if value > prevalue { continue }
            
            let difference = prevalue - value + 1
            totalOps += difference
            nums[index] += difference
        }
        
        return totalOps
    }
}

// Method 2 - Faster
class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        var nums = nums
        var totalOps = 0
        
        for index in 1..<nums.count {
            if nums[index] > nums[index-1] { continue }
            
            let difference = nums[index-1] - nums[index] + 1
            totalOps += difference
            nums[index] += difference
        }
        
        return totalOps
    }
}
