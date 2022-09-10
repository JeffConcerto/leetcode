class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var uniqueSet: Set<Int> = []
        var duplicateSet: Set<Int> = []
        
        for num in nums {
            if uniqueSet.contains(num) {
                duplicateSet.insert(num)
            } else {
                uniqueSet.insert(num)
            }
        }
        
        let finalSet = Array(uniqueSet.subtracting(duplicateSet))
        
        return finalSet.reduce(0,+)
        
    }
}
