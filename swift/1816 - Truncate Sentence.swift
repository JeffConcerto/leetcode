class Solution {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var s = Array(s)
        var wordCount = 0 
        var result = ""
        
        for char in s {
            if char == " " { wordCount += 1}
            if wordCount == k { break }
            result.append(char)
        }
        
        return result    
    }
}
