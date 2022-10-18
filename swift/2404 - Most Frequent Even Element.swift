class Solution {
    func mostFrequentEven(_ nums: [Int]) -> Int {
        var freqMap = [Int: Int]()
        
        for num in nums {
            freqMap[num, default: 0] += 1
        }
        
        var maxFreq = 0
        var maxKey = -1
        
        for (key, value) in freqMap {
            if key % 2 != 0 { continue }
            if value > maxFreq {
                maxFreq = value
                maxKey = key
            } else if value == maxFreq {
                maxKey = key < maxKey ? key : maxKey
            }
        }
        
        return maxKey
    }
}
