class Solution {
    func countValidWords(_ sentence: String) -> Int {
        let words = sentence.split(separator: " ")
        var validCount = 0
        for word in words {
            var isValid = true
            var hasPuntuation = false
            var hasHypen = false
            let word = Array(word)
            
            for (index, char) in word.enumerated() {
                if char.isNumber { isValid = false; break}
                else if char == "-" {
                    if index - 1 >= 0 && index + 1 < word.count && word[index-1].isLetter && word[index+1].isLetter {
                        if hasHypen { isValid = false; break}
                         hasHypen = true
                    } else {
                        isValid = false; break
                    }
                }
                else if char.isPunctuation {
                    if hasPuntuation || index != word.count-1 { isValid = false; break}
                    hasPuntuation = true
                }
            }
            validCount = isValid ? validCount + 1 : validCount            
        }
        
        return validCount
    }
}
