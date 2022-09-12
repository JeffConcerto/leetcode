class Solution {
    func maxAscendingSum(_ nums: [Int]) -> Int {
        
        var currentSum = nums[0]
        var maxSum = 0
        
        for i in 1..<nums.count {
            if nums[i] > nums[i-1] {
                currentSum += nums[i]
            } else {
                maxSum = max(maxSum, currentSum)
                currentSum = nums[i]
            }
        }
        
        return max(maxSum, currentSum)
    }
}
