class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        let words: [String] = s.components(separatedBy: " ")
        guard words.count == pattern.count else { return false }
        let pattern = Array(pattern)
        
        let patternHash = matchCharToWord(from: pattern, using: words)

        guard hashContainsUniqueValues(patternHash) else { return false }

        return isPatternMatching(patternHash, pattern, words)
    }

    private func matchCharToWord(from pattern: [String.Element], using words: [String]) -> [Character:String] {
        var hash = [Character:String]()

        for i in 0..<pattern.count {
            hash[pattern[i]] = words[i]
        }

        return hash
    }

    private func hashContainsUniqueValues(_ patternHash: [Character:String]) -> Bool {
        let set = Set(patternHash.values)
        return set.count == patternHash.keys.count
    }

    private func isPatternMatching(_ patternHash: [Character: String], _ pattern: [String.Element], _ words: [String]) -> Bool {
          for i in 0..<pattern.count {
            if patternHash[pattern[i]] != words[i] { return false}
        }

        return true
    }
}
