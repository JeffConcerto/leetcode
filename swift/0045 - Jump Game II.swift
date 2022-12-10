// Needed help to get solution that did not exceed max time:
class Solution {
    func jump(_ nums: [Int]) -> Int {
        var count = 0

        var left = 0
        var right = 0

        while right < nums.count-1 {
            var maxDistance = 0

            for index in left...right {
                maxDistance = max(maxDistance, index + nums[index])
            }

            left = right + 1
            right = maxDistance
            count += 1
        }

        return count
        
    }
}
