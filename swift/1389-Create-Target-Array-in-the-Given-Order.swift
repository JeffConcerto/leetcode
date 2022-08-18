class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var targetArray = [Int]()
        
        for i in 0..<nums.count {
            targetArray.insert(nums[i], at: index[i])
        }
        
        return targetArray
    }
}
