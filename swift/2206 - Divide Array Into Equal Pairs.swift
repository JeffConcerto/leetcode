class Solution {
    func divideArray(_ nums: [Int]) -> Bool {
        var numMap = [Int:Int]()
        
        for num in nums {
            numMap[num, default: 0 ] += 1
        }
        
        for value in numMap.values {
            if value % 2 != 0 { return false }
        }
        
        return true
        
    }
}
