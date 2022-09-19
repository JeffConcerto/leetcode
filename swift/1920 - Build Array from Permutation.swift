class Solution {
    func buildArray(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        
        for i in 0..<nums.count {
            result.append(nums[nums[i]])    
        }
        
        return result
    }
}
