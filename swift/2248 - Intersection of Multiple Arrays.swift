class Solution {
    func intersection(_ nums: [[Int]]) -> [Int] {
        var numberMap = [Int: Int]()
        
        for array in nums {
            for num in array {
                numberMap[num, default: 0] += 1
            }
        }
        
        numberMap = numberMap.filter { $0.1 == nums.count }
        
        return numberMap.keys.sorted()
    }
}
