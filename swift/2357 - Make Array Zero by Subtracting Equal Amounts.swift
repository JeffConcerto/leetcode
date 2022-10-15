class Solution {
    func minimumOperations(_ nums: [Int]) -> Int {
        var nums = nums
        var operationsPerformed = 1
        var turns = 0
        
        while operationsPerformed > 0 {
            operationsPerformed = 0
            var minNum = Int.max
            
            for num in nums {
                if num > 0 {
                    minNum = min(minNum, num)
                }
            }
            
            for i in 0..<nums.count {
                if nums[i] <= 0 { continue }
                nums[i] -= minNum
                operationsPerformed += 1
            }
            
            turns += 1
        }
        
        return turns - 1
    }
}
