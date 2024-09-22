class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var sum = 0
        for num in nums {
            if num > sum + num {
                sum = num
            } else {
                sum += num
            }

            maxSum = max(maxSum, sum)
        }

        return maxSum
    }
}
