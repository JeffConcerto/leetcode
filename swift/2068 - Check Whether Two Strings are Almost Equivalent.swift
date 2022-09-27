class Solution {
    func checkAlmostEquivalent(_ word1: String, _ word2: String) -> Bool {
        let word1 = Array(word1)
        let word2 = Array(word2)
        
        var word1Map = [Character: Int]()
        var word2Map = [Character: Int]()
        
        for index in 0..<word1.count {
            word1Map[word1[index], default: 0] += 1
            word2Map[word2[index], default: 0] += 1
        }
        
        let keyArray = Set(word1Map.keys).union(Set(word2Map.keys))
        
        for key in keyArray {
            let word1Value = word1Map[key] ?? 0
            let word2Value = word2Map[key] ?? 0
            let diff = abs(word1Value - word2Value)
            if diff > 3 { return false}
        }
        
        return true
    }
}
