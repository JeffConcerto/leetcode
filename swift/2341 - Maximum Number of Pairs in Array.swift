class Solution {
    func numberOfPairs(_ nums: [Int]) -> [Int] {
        var numMap = [Int: Int]()
        
        for num in nums {
            numMap[num, default: 0] += 1
        }
        
        var pairs = 0
        var leftovers = 0
        
        for count in numMap.values {
            pairs += count / 2
            leftovers += count % 2
        }
        
        return [pairs, leftovers]
    }
}
