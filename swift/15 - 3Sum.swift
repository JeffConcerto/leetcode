class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var nums = nums.sorted()
        var result = [[Int]]()
        
        for i in 0..<nums.count - 2 {
            if i > 0 && nums[i] == nums[i-1] { continue }
            
            var low = i + 1
            var high = nums.count - 1
            
            while low < high {
                let sum = nums[i] + nums[low] + nums[high]
                
                if sum > 0 {
                    high -= 1
                } else if sum < 0 {
                    low += 1
                } else {
                    result.append([nums[i], nums[low], nums[high]])
                    
                    low += 1
                    high -= 1
                    
                    while low < nums.count - 1 && nums[low] == nums[low-1] { low += 1 }
                    while high >= 0 && nums[high] == nums[high+1] { high -= 1}
                }
                
            }
        }
        
        return result
    }
}
