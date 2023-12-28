class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count-1
        var maxWater = 0

        while left < right {
            let distance = right-left
            let length = min(height[left], height[right])
            let area = distance * length
            maxWater = max(maxWater, area)
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }

        }
        return maxWater
    }
}
