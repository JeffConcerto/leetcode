class Solution {
    func isAcronym(_ words: [String], _ s: String) -> Bool {
        guard words.count == s.count else { return false }
        let s = Array(s)

        for i in 0..<words.count {
           if words[i].first! != s[i] { return false }
        }

        return true
    }
}
