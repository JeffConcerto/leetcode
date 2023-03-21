class Solution {
    func zeroFilledSubarray(_ nums: [Int]) -> Int {
        var zeroIndex = -1
        var left = -1
        var count = 0

        for (index, value) in nums.enumerated() {
            if value != 0 {
                left = index
            } else {
                zeroIndex = index
            }

            count += max(0, zeroIndex - left)
        }

        return count
    }
}
