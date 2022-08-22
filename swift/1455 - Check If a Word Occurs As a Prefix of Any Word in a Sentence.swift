// Method 1 - New School
class Solution {
    func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
        let sentenceArray = sentence.components(separatedBy: " ")
        for (index, word) in sentenceArray.enumerated() {
            if word.hasPrefix(searchWord) { return index + 1 }
        }
        return -1
    }
}

// Method 2 - Old School

class Solution {
    func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
    
        var containsPrefix = true
        var wordIndexCount = 0
        var wordArray = Array(searchWord)
        var wordIndex = 0
        
        for char in sentence {
            if containsPrefix == false && char != " " { continue }
            
            if char == " " { 
                containsPrefix = true
                wordIndex += 1
                wordIndexCount = 0
                continue 
            }
            
            if char == wordArray[wordIndexCount] {
                wordIndexCount += 1
            } else {
                containsPrefix = false
            }
            
            if wordIndexCount == searchWord.count && containsPrefix { return wordIndex + 1 }
        }
        
        return -1
    }
}
