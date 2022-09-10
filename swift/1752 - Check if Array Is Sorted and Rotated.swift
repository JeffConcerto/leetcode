class Solution {
    func check(_ nums: [Int]) -> Bool {
        let sortedNums = nums.sorted()
        
        var start = 0
        
        while start < sortedNums.count {
            var isMatch = true
            for index in 0..<nums.count {
                if sortedNums[(index + start) % nums.count] != nums[index] {
                    isMatch = false
                    break
                }
            }
            if isMatch { return true}
            start += 1
        }
        
        return false
    }
}
