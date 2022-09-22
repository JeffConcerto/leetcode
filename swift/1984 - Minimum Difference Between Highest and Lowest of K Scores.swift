class Solution {
    func minimumDifference(_ nums: [Int], _ k: Int) -> Int {
        let nums = nums.sorted(by: >)
        var minDiff = Int.max
        
        for i in 0..<nums.count {
            if i > nums.count - k  { break }
            minDiff = min(abs(nums[i] - nums[i+k-1]), minDiff)
        }
        return minDiff
    }
}
