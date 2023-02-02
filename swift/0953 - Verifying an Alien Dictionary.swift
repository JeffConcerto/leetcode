class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        guard words.count > 1 else { return true }
        let orderMap = Array(order).enumerated().reduce(into: [:]) { dict, element in 
            dict[element.element] = element.offset
        }

        for i in 1..<words.count {
            guard isBefore(Array(words[i-1]), Array(words[i]), orderMap) else { return false }
        }

        return true
    }

    private func isBefore(_ word1: [Character], _ word2: [Character], _ order: [Character: Int]) -> Bool {
        let minCount = min(word1.count, word2.count)
        for i in 0..<minCount {
            if order[word1[i]]! < order[word2[i]]! { return true}
            else if order[word1[i]]! > order[word2[i]]! { return false }
        }
        return word1.count <= word2.count
    }
}
