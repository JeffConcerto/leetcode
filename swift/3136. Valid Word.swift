class Solution {
    func isValid(_ word: String) -> Bool {
        if word.count < 3 { return false }
        let vowels = Set(["a","A","e", "E","i","I","o","O","u", "U"])
        var hasVowel = false
        var hasConsonant = false

        for char in word {
            if char.isNumber { continue }
            else if char.isLetter {
                if vowels.contains(String(char)) {
                    hasVowel = true
                } else {
                    hasConsonant = true
                }
            } else {
                return false
            }
        }

        return hasVowel && hasConsonant
    }
}
