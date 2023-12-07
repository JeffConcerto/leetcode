class Solution {
    func beautySum(_ s: String) -> Int {
        let s = Array(s)
        var sum = 0

        for i in 0..<s.count-1 {
            var freqMap = [s[i]:1]
            var j = i+1
            while j < s.count {
                freqMap[s[j], default:0] += 1
                sum += freqMap.values.max()! - freqMap.values.min()!
                j += 1
            }
        }
        return sum
    }

}
