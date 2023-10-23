class Solution {
    func minimumSum(_ nums: [Int]) -> Int {
        var minSum = 10_000_000
        for i in 0..<nums.count-2 {
            for j in i+1..<nums.count-1 {
                for k in j+1..<nums.count {
                    if nums[j] > nums[i] && nums[j] > nums[k] {
                        minSum = min(nums[i] + nums[j] + nums[k], minSum)
                    }
                }
            }
        }

        return minSum == 10_000_000 ? -1 : minSum
    }
}
