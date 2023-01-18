// Coverted official Leetcode solution to Swift.
// Knew to use Kadane's Algo, but needed help with prefix/suffix sum:

class Solution {
    func maxSubarraySumCircular(_ nums: [Int]) -> Int {
        let n = nums.count
        var rightMax = Array(repeating: 0, count: n)
        rightMax[n-1] = nums[n-1]
        var suffixSum = nums[n-1]
        for i in 1..<n {
            suffixSum += nums[n-1-i]
            rightMax[n-1-i] = max(rightMax[n-i], suffixSum)
        }

        var maxSum = nums[0]
        var specialSum = nums[0]
        suffixSum = 0
        var currentMax = 0
        for i in 0..<n {
            if currentMax < 0 { currentMax = 0}
            currentMax += nums[i]
            maxSum = max(maxSum, currentMax)

            suffixSum += nums[i]

            guard i + 1 < n else { continue }
            specialSum = max(specialSum, suffixSum + rightMax[i + 1])
        }

        return max(maxSum, specialSum)
    }
}
