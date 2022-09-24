class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let characters = Array(s)
        
        var wordCount = 0
        
        var lastCharWasASpace = false
        for char in characters {
            if lastCharWasASpace && char.isLetter {
                wordCount = 0
            }
            
            if char.isLetter { wordCount += 1}
            
            lastCharWasASpace = char == " " ? true : false
        }
        
        return wordCount
    }
}
