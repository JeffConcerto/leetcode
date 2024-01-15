class Solution {
    func maxFrequencyElements(_ nums: [Int]) -> Int {
        var freqMap = [Int:Int]()
        var maxFre = 0
        for num in nums {
            freqMap[num, default: 0] += 1
            maxFre = max(maxFre,freqMap[num]!)
        }

        var total = 0

        for frequency in freqMap.values {
            total += frequency == maxFre ? maxFre : 0
        }

        return total
    }
}
