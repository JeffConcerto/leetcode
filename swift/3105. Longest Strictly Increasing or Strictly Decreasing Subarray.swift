class Solution {
    func longestMonotonicSubarray(_ nums: [Int]) -> Int {
        var increaseStart = 0
        var decreaseStart = 0
        var maxi = 0

        for right in 0..<nums.count {
            if right >  0 && nums[right] <= nums[right-1] {
                maxi = max(maxi, right-increaseStart)
                increaseStart = right
            }

            if right >  0 && nums[right] >= nums[right-1] {
                maxi = max(maxi, right-decreaseStart)
                decreaseStart = right
            }

            maxi = max(maxi, right-increaseStart+1)
            maxi = max(maxi, right-decreaseStart+1)
        }

        return maxi
    }
}
