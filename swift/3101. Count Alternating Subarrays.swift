class Solution {
    func countAlternatingSubarrays(_ nums: [Int]) -> Int {
        var left = 0
        var count = 0

        for right in 0..<nums.count {

            if right > 0 && nums[right] == nums[right-1] {
                left = right
            }

            count += right-left+1
        }


        return count
    }
}
