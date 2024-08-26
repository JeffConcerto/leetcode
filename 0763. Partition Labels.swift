class Solution {
    func partitionLabels(_ s: String) -> [Int] {
        let s = Array(s)
        var map = [Character:Int]()
        for i in 0..<s.count {
            map[s[i]] = i
        }
        var result = [Int]()
        var left = 1
        var currentMinIndex = map[s[0]]!
        var start = 0
        while left < s.count {
            if left > currentMinIndex {
                result.append(left-start)
                start = left
                currentMinIndex = map[s[left]]!
            } else {
                currentMinIndex = max(currentMinIndex, map[s[left]]!)
            }
            left += 1
        }
        result.append(s.count-start)
        return result
    }
}
