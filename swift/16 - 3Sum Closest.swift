class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var nums = nums.sorted()
        var closestDistance = Int.max
        var closestSum = target
        
        for i in 0..<nums.count - 2 {
             if i > 0 && nums[i] == nums[i-1] { continue }
            
            var start = i + 1
            var end = nums.count - 1
            
            while start < end {
                let sum = nums[i] + nums[start] + nums[end]
                
                if sum == target { return target }
                
                let distance = abs(target - sum)
                
                if distance < closestDistance {
                    closestDistance = distance
                    closestSum = sum
                }
                                
                if sum > target {
                    end -= 1
                } else {
                    start += 1
                }
            }
        }
        
        return closestSum
    }
}
