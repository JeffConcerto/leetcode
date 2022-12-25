class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxOnes = 0
        var count = 0

        for i in 0..<nums.count {
            if nums[i] == 1 {
                count += 1
            } else {
                maxOnes = max(maxOnes, count)
                count = 0
            }
        }

        maxOnes = max(maxOnes, count)

        return maxOnes
    }
}
