class Solution {
    func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
        let s = Array(s)
        var distance = -1
        var indexMap = [Character:Int]()

        for i in 0..<s.count {
            if let firstIndex = indexMap[s[i]] {
                distance = max(distance,i-firstIndex-1)
            } else {
                indexMap[s[i]] = i
            }
        }

        return distance
    }
}
