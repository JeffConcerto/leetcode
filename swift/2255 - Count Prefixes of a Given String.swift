// Method 1

class Solution {
    func countPrefixes(_ words: [String], _ s: String) -> Int {
        var prefixCount = 0
        var s = Array(s)
        
        for word in words {
            if word.count > s.count { continue }
            var isPrefix = true
            var sIndex = 0
            for char in word {
                if char != s[sIndex] { isPrefix = false; break }
                sIndex += 1
            }
            
            if isPrefix { prefixCount += 1 }
        }
        
        return prefixCount
    }
}

// Method 2
class Solution {
    func countPrefixes(_ words: [String], _ s: String) -> Int {
        var prefixCount = 0
        
        for word in words {
            if s.hasPrefix(word) { prefixCount += 1 }
        }
        return prefixCount
    }
}

// Method 3
class Solution {
    func countPrefixes(_ words: [String], _ s: String) -> Int {
        var prefixCount = 0
        
        words.forEach {
            if s.hasPrefix($0) { prefixCount += 1}
        }

        return prefixCount
    }
}
