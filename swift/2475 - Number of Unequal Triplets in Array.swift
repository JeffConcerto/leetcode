class Solution {
    func unequalTriplets(_ nums: [Int]) -> Int {
        var count = 0
        
        for i in 0..<nums.count - 2 {
            for j in i + 1..<nums.count - 1 {
                if nums[j] == nums[i] { continue }
                for k in j + 1..<nums.count {
                    if nums[k] == nums[j] || nums[k] == nums[i] { continue }
                    
                    count += 1
                }
            }
        }
        
        return count
    }
}
