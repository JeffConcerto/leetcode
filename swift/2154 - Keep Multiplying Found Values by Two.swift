class Solution {
    func findFinalValue(_ nums: [Int], _ original: Int) -> Int {
        let nums = Set(nums)
        var original = original
        
        while nums.contains(original) {
            original *= 2
        }
        
        return original
    }
}
