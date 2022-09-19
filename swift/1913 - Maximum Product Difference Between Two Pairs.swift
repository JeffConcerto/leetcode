class Solution {
    func maxProductDifference(_ nums: [Int]) -> Int {
        var nums = nums.sorted()
        return (nums[nums.count-1] * nums[nums.count-2]) - (nums[0] * nums[1])
    }
}
