class Solution {
    func equalFrequency(_ word: String) -> Bool {
        var freqMap = [Character: Int]()
        var countMap = [Int: Int]()
        
        for char in word {
            freqMap[char, default: 0] += 1
        }
        
        if freqMap.keys.count == 1 { return true }
        
        for value in freqMap.values {
            countMap[value, default: 0] += 1
        }
        
        if countMap.count > 2 { return false }
        
        let counts = Array(countMap.keys)
        let diffLetters = Array(countMap.values)
                
        if diffLetters.count == 1 || counts.count == 1 {
            return counts[0] == 1 
        }
    
       
        if (counts[0] == 1 && diffLetters[0] == 1) || (counts[1] == 1 && diffLetters[1] == 1) { return true }
        return (counts[0] - 1 == counts[1] && diffLetters[0] == 1) || (counts[1] - 1 == counts[0] && diffLetters[1] == 1)
        
    }
}
