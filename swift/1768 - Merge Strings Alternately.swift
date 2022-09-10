class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let word1 = Array(word1)
        let word2 = Array(word2)
        
        var i = 0
        var j = 0
        
        var result = ""
        var count = word1.count + word2.count
        
        while result.count < count {
            let word1Letter = i < word1.count ? String(word1[i]) : ""
            let word2Letter = j < word2.count ? String(word2[j]) : ""
        
            result += word1Letter + word2Letter
            i += 1
            j += 1
        }
        
        return result
    }
}
