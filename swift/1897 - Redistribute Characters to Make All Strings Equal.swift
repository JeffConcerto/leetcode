class Solution {
    func makeEqual(_ words: [String]) -> Bool {
        var letterCount = [Character: Int]()
        
        for word in words {
            for char in word {
                letterCount[char, default: 0] += 1
            }
        }
        
        for value in letterCount.values {
            if value % words.count != 0 { return false }
        }
        
        return true
    }
}
