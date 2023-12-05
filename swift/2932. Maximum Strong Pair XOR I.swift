class Solution {
    func maximumStrongPairXor(_ nums: [Int]) -> Int {
        var maxOr = 0

        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if abs(nums[i]-nums[j]) <= min(nums[i], nums[j]) {
                    maxOr = max(maxOr, nums[i] ^ nums[j])
                }
            }
        }

        return maxOr
    }
}
