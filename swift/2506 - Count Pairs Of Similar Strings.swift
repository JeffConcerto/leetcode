class Solution {
    func similarPairs(_ words: [String]) -> Int {
        let arrayOfSets = convertArrayToCharSets(words)
        var similarStringsCount = 0

        for i in 0..<arrayOfSets.count {
            for j in i+1..<arrayOfSets.count {
                if arrayOfSets[i] == arrayOfSets[j] { similarStringsCount += 1 }
            }
        }

        return similarStringsCount
    }

    private func convertArrayToCharSets(_ words: [String]) -> [Set<Character>]  {
        var arrayOfSets = [Set<Character>]()
        for i in 0..<words.count {
            let set = convertToCharSet(words[i])
            arrayOfSets.append(set)
        }

        return arrayOfSets
    }

    private func convertToCharSet(_ word: String) -> Set<Character> {
        var set: Set<Character> = []

        for char in word {
            set.insert(char)
        }

        return set
    }
}
