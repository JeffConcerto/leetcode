class Solution {
    func findMaxK(_ nums: [Int]) -> Int {
        var negatives: Set<Int> = []
        
        for num in nums {
            if num < 0 { negatives.insert(abs(num)) }
        }
        
        var maxNum = -1
        
        for num in nums where negatives.contains(num) {
            maxNum = max(maxNum, num)
        }
        
        return maxNum
    }
}
