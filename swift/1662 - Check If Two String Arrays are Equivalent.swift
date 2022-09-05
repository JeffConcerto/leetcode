// Method 1
class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        let wordA = word1.joined()
        let wordB = word2.joined()
        
        return wordA == wordB
    }
}


// Method 2
class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        var wordA = ""
        for index in 0..<word1.count {
            wordA.append(word1[index])
        }
        
        var wordB = ""
         for index in 0..<word2.count {
            wordB.append(word2[index])
        }
        
        return wordA == wordB
    }
}
