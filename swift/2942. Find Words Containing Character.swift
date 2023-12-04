class Solution {
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        var indices = [Int]()

        for (i, word) in words.enumerated() {
            var hasChar = false
            for char in word {
                if char == x { 
                    hasChar = true
                    break
                }
            }
            if hasChar { indices.append(i)}
        }

        return indices
    }
}
