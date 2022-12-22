// Method 1:
class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var sortedNums = nums.sorted(by: >)
        
        return (sortedNums[0] - 1) * (sortedNums[1] - 1)
    }
}

// Method 2:
class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var max1 = Int.min
        var max2 = Int.min

        for i in 0..<nums.count {
            if nums[i] > max1 {
                max2 = max1
                max1 = nums[i]
            } else if nums[i] > max2 {
                max2 = nums[i]
            }
        }

        return (max1-1) * (max2-1)
    }
}
