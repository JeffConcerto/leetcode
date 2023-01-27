// Needed help to get solution. Used solution by tzef wih slight name changes:
class Solution {
    func findAllConcatenatedWordsInADict(_ words: [String]) -> [String] {
        var words = Set(words)
        var result = [String]()

        for word in words {
            if isConcatenated(Array(word), words) {
                result.append(word)
            }
        }
        return result
    }

    private func isConcatenated(_ word: [Character], _ wordSet: Set<String>) -> Bool {
        var visitedIndex = Set<Int>()
        var indexQueue = [0]
        var containedWords = 0

        while !indexQueue.isEmpty {
            var nextIndexQueue = [Int]()
            containedWords += 1

            for charIndex in indexQueue {
                guard !visitedIndex.contains(charIndex) else { continue }
                visitedIndex.insert(charIndex)

                var string = ""

                for i in charIndex..<word.count {
                    string.append(word[i])
                    if wordSet.contains(string) {
                        if i < word.count-1 {
                            nextIndexQueue.append(i+1)
                        } else {
                            if containedWords >= 2 {
                                return true
                            }
                        }
                    }
                }
            }
            indexQueue = nextIndexQueue
        }
        return false
    }
}



    
