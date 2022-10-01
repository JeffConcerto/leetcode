class Solution {
    func firstPalindrome(_ words: [String]) -> String {
        for word in words {
            if isPalindrome(word) { return word }
        }
        
        return ""
    }
    
    func isPalindrome(_ word: String) -> Bool {
        let word = Array(word)
        var start = 0
        var end = word.count - 1
        
        for i in 0..<word.count / 2 {
            if word[start + i] != word[end - i] { return false }
        }
        
        return true
    }
}
