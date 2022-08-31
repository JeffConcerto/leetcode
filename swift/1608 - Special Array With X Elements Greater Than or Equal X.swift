// Method 1
class Solution {
    func specialArray(_ nums: [Int]) -> Int {
        var max = nums.count
        
        while max > 0 {
            let count = nums.filter {$0 >= max }.count
            if count == max { return count }
            max -= 1
        }
        
        return -1
    }
}

// Method 2
class Solution {
    func specialArray(_ nums: [Int]) -> Int {
        var nums = nums.sorted(by: >)
        var max = nums.count
        
        while max > 0 {
            if nums[max - 1] >= max && (max == nums.count || nums[max] < max) { return max }
            max -= 1
        }
        
        return -1
    }
}
