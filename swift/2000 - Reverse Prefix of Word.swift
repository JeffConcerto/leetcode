class Solution {
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        var word = Array(word)

       if let lastIndex = word.firstIndex(of: ch) {
           let reversePrefix = word.prefix(lastIndex+1).reversed()
           let suffix = word.suffix(word.count - 1 - lastIndex)
        
            return String(reversePrefix) + String(suffix) 
       }
        return String(word)
    }
}
