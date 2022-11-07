class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var highestArea = Int.min
        
        var start = 0
        var end = height.count - 1
        
        while start < end {
            let areaHeight = min(height[start], height[end])
            let areaBase = end - start
            highestArea = max(highestArea, areaBase * areaHeight)
            
            if height[start] > height[end] {
                end -= 1
            } else {
                start += 1
            }
            
        }
        
        return highestArea
    }
}
