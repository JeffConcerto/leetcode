class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var currentSum = nums[0]

        for i in 1..<nums.count {
            maxSum = max(maxSum, currentSum)
            if nums[i] + currentSum < nums[i] {
                currentSum = nums[i]
            } else {
                currentSum += nums[i]
            }
        }

        return max(maxSum, currentSum)
    }
}
