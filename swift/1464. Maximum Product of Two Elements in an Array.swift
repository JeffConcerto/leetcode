class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        let nums = nums.sorted(by:>)
        return (nums[0]-1) * (nums[1]-1)
    }
}
