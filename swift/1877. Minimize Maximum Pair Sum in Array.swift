class Solution {
    func minPairSum(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        var i = 0
        var j = nums.count-1
        var minMax = -1
        while i < j {
            minMax = max(minMax, nums[i] + nums[j])
            i += 1
            j -= 1
        }

        return minMax
    }
}
