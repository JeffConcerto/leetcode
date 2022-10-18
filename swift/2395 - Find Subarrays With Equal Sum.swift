class Solution {
    func findSubarrays(_ nums: [Int]) -> Bool {
        var set: Set<Int> = []
        
        for i in 0..<nums.count - 1 {
            let sum = nums[i] + nums[i+1]
            if set.contains(sum) { 
                return true 
            } else {
                set.insert(sum)
            }
        }
        
        return false
    }
}
