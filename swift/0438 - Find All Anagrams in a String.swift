class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        guard s.count >= p.count else { return [] }
        var anagramMap = Array(p).reduce(into: [Character:Int]()) { map, char in map[char, default: 0] += 1 }
        var s = Array(s)
        var sMap = [Character:Int]()
        var result = [Int]()

        for i in 0..<s.count {
            let character = s[i]
            if i >= p.count {
                let charToRemove = s[i-p.count]
                if let count = sMap[charToRemove] {
                    if count <= 1 {
                        sMap[charToRemove] = nil
                    } else {
                        sMap[charToRemove] = count-1
                    }
                }
            }

            sMap[character, default: 0] += 1

            if sMap == anagramMap {
                result.append(i-(p.count-1))
            }
        }

        return result
    }
}
