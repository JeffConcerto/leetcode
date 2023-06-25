class Solution {
    func maximumNumberOfStringPairs(_ words: [String]) -> Int {
        var wordMap = [String:Int]()

        for (i,word) in words.enumerated() {
            wordMap[word] = i
        }

        // Check wordMap for reverse of each word
        var pairs = 0
        for (i,word) in words.enumerated() {
            if let index = wordMap[String(word.reversed())], index != i {
                pairs += 1
            }
        }

        return pairs/2
    }
}
