// Method 1
class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var maxCount = 0
        
        for sentence in sentences {
            var wordCount = 0
            for char in sentence {
                if char == " " {wordCount += 1}
            }
            
            wordCount += 1
            maxCount = max(maxCount, wordCount)
        }
        
        return maxCount
    }
}

// Method 2
class Solution {
    func mostWordsFound(_ sentences: [String]) -> Int {
        var maxCount = 0
        sentences.forEach { sentence in
            maxCount = max(maxCount, sentence.split(separator: " ").count)
        }
        
        return maxCount
    }
}
