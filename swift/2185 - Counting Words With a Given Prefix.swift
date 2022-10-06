// Method 1 
class Solution {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        words.filter {$0.hasPrefix(pref)}.count
    }
}

// Method 2

class Solution {
    func prefixCount(_ words: [String], _ pref: String) -> Int {
        let pref = Array(pref)
        var count = 0
        
        for word in words {
            if word.count < pref.count { continue }
            let word = Array(word)
            if pref == Array(word[0..<pref.count]) { count += 1}
        }
        
        return count
    }
}
