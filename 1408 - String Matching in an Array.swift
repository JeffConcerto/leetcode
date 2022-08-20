// Method 1
class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        let wordsSorted = words.sorted { $0.count < $1.count }
        
        var result = [String]()
        
        for index in 0..<wordsSorted.count {
            let word = wordsSorted[index]
            for j in index + 1..<wordsSorted.count {
                if wordsSorted[j].contains(word) {
                    result.append(word)
                    break
                }
            }
        }
       
        return result
    }
}

// Method 2

class Solution {
    func stringMatching(_ words: [String]) -> [String] {
        var result: Set<String> = []
        
        for word in words {
            for secondWord in words where word != secondWord {
                if secondWord.contains(word) { result.insert(word) }
            }
        }
        
        return Array(result)
    }
}
