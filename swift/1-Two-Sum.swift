class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numMap = [Int: Int]()
        
        for (index, value) in nums.enumerated() {
            numMap[value] = index
        }
        
        for (index, value) in nums.enumerated() {
            let revisedTarget = target - value
            if let secondNumIndex = numMap[revisedTarget], index != secondNumIndex {
                return [index, secondNumIndex]
            }
        }
        
        return []
    }
    
}
