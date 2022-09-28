class Solution {
    func countVowelSubstrings(_ word: String) -> Int {
        var word = Array(word)
        var set: Set<Character> = Set(["a", "e", "i", "o", "u"])
        var count = 0
        
        for i in 0..<word.count {
            if i + 4 >= word.count { break }
            var substring: Set<Character> = []
            var j = i + 4
            
            for index in i...j {
                substring.insert(word[index])
            }
            
            if substring == set {
                count += 1
            } else if substring.isSubset(of: set) {
                // do nothing
            } else { continue }
            
            j += 1
            
            while j < word.count {
            substring.insert(word[j])
                
            if substring == set {
                count += 1
            } else if substring.isSubset(of: set) {
                // do nothing
            } else { break }
                
                j += 1
            }
        }
        
        return count
    }
}
