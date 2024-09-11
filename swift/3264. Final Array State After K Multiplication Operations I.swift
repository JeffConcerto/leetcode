class Solution {
    func getFinalState(_ nums: [Int], _ k: Int, _ multiplier: Int) -> [Int] {
        var nums = nums
        var k = k

        while k > 0 {
            var minIndex = 0
            for i in 0..<nums.count{
                if nums[i] < nums[minIndex] {
                    minIndex = i
                }
            }
            nums[minIndex] *= multiplier
            k -= 1
        }

        return nums
    }
}
