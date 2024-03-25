class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var nums = nums
        var result = [Int]()

        for i in 0..<nums.count {
            let val = abs(nums[i])-1
            if nums[val] < 0 {
                result.append(val+1)
            } else {
                nums[val] *= -1
            }
        }

        return result
    }
}
