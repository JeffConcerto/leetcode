class Solution {
    func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        var left = 0
        var sum = 1

        for right in 0..<nums.count {
            sum *= nums[right]

            while left <= right && sum >= k {
                sum /= nums[left]
                left += 1
            }

            count += right-left + 1 
        }

        return count
    }
}
