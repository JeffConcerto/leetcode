class Solution {
    func countWords(_ words1: [String], _ words2: [String]) -> Int {
        var wordMap1 = [String:Int]()
        var wordMap2 = [String:Int]()
        
        for word in words1 {
            wordMap1[word, default: 0] += 1
        }
        
        for word in words2 {
            wordMap2[word, default: 0] += 1
        }
        
        var count = 0
        
        for word in wordMap1.keys {
            if wordMap1[word] == 1 && wordMap2[word] == 1 {
                count += 1
            }
        }
        
        return count
    }
}
