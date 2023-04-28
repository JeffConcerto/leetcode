class Solution {
            var wordId = [String: Int]()

    func numSimilarGroups(_ strs: [String]) -> Int {
        var idIndex = 0
        for i in 0..<strs.count {
            for j in i+1..<strs.count {
                if areSimilar(strs[i], strs[j]) {
                    if let id1 = wordId[strs[i]], let id2 = wordId[strs[j]] {
                        let newId = min(id1,id2)
                        for (key,_) in wordId {
                            if wordId[key] == id1 || wordId[key] == id2 {
                                wordId[key] = newId
                            }
                        }                        
                    } else if let id = wordId[strs[i]] {
                        wordId[strs[j]] = id
                    } else if let id = wordId[strs[j]] {
                        wordId[strs[i]] = id
                    } else {
                        wordId[strs[i]] = idIndex 
                        wordId[strs[j]] = idIndex
                        idIndex += 1
                    }
                }
            }
            if wordId[strs[i]] == nil {
                    wordId[strs[i]] = idIndex
                    idIndex += 1
                }
        }
        return Set(wordId.values).count
    }

    private func areSimilar(_ word1: String, _ word2: String) -> Bool {
        if word1 == word2 { return true }
        var word1 = Array(word1)
        let word2 = Array(word2)
        let n = word1.count
        var count = 0
        var missingLetters = Set<Character>()
        for i in 0..<n {
            if word1[i] != word2[i] {
                count += 1
                if missingLetters.contains(word1[i]) {
                    missingLetters.remove(word1[i])
                } else {
                    missingLetters.insert(word1[i])
                }
                if missingLetters.contains(word2[i]) {
                    missingLetters.remove(word2[i])
                } else {
                    missingLetters.insert(word2[i])
                }
                if count > 2 { return false}
            }
        }

        return missingLetters.isEmpty
    }
}
