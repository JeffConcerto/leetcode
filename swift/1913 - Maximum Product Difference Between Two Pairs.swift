// Method 1:
class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        var nums = nums.sorted()
        return nums[nums.count-1] * nums[nums.count-2] - nums[0] * nums[1]
    }
}

// Method 2:
class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        var maxs = [Int.min, Int.min]
        var mins = [Int.max, Int.max]
        
        for i in 0..<nums.count {
            if nums[i] > maxs[1] {
                if nums[i] > maxs[0] {
                    maxs[1] = maxs[0]
                    maxs[0] = nums[i]
                } else {
                    maxs[1] = nums[i]
                }
            }
            if nums[i] < mins[1] {
                 if nums[i] < mins[0] {
                     mins[1] = mins[0]
                    mins[0] = nums[i]
                } else {
                    mins[1] = nums[i]
                }
            }
        }
        return maxs[0] * maxs[1] - mins[0] * mins[1]
    }
}
