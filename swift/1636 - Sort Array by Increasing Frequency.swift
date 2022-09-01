class Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {
        var freqMap = [Int: Int]()
        
        for num in nums {
            freqMap[num, default: 0] += 1
        }
        
        let sortedKeys = freqMap.sorted { $0.value < $1.value || ($0.value == $1.value && $0.key > $1.key)}.map {$0.0}
        
        var result = [Int]()
        
        for key in sortedKeys {
            result.append(contentsOf: Array(repeating: key, count: freqMap[key]!))
        }
        
        return result
    }
}
