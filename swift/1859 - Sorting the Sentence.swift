class Solution {
    func sortSentence(_ s: String) -> String {
        var currentWord = ""
        var words = s.split(separator: " ")
        var result = Array(repeating: "", count: words.count)

        for word in words {
            let lastIndex = word.index(before: word.endIndex)
            let arrayIndex = Int(word.suffix(1))! - 1
            result[arrayIndex] = String(word.prefix(upTo: lastIndex))
        }
        
        return result.joined(separator: " ")
    }
}
