class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 2 else { return nums.count }
        var left = 2 
        var right = 2
        var before = [nums[0], nums[1]]

        while right < nums.count {
            if nums[right] == before[0] && nums[right] == before[1] {
                right += 1
            } else {
                nums[left] = nums[right]
                before[left%2] = nums[right]
                left += 1
                right += 1
            }
        }

        return left
    }
}
