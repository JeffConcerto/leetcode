class Solution {
    func maxRepeating(_ sequence: String, _ word: String) -> Int {
        let string = Array(sequence)
        let word = Array(word)
        let length = word.count
        var maxCount = 0
        
       
        var startIndex = 0
        while startIndex < string.count && maxCount * length < string.count - startIndex {
            var tempCount = 0
            var index = startIndex
        
             while index + length <= string.count {
                if string[index..<index+length] == word[0..<length] {
                    tempCount += 1
                    maxCount = max(maxCount, tempCount)
                    index += length
                } else {
                    tempCount = 0
                    index += 1
                }
            }
        
            max(maxCount, tempCount)
            startIndex += 1
        }
        
        return maxCount
        
    }
}
