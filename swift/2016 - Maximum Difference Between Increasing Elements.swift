class Solution {
    func maximumDifference(_ nums: [Int]) -> Int {
        var maxDiff = -1
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                if nums[i] >= nums[j] { continue }
                maxDiff = max(maxDiff, nums[j] - nums[i])
            }
        }

        
        return maxDiff
    }
}
