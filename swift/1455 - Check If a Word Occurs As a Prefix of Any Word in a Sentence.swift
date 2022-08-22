class Solution {
    func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
        let sentenceArray = sentence.components(separatedBy: " ")
        for (index, word) in sentenceArray.enumerated() {
            if word.hasPrefix(searchWord) { return index + 1 }
        }
        return -1
    }
}
