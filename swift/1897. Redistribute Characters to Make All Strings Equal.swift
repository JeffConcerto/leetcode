class Solution {
    func makeEqual(_ words: [String]) -> Bool {
        var letterMap = [Character:Int]()

        for word in words {
            for char in word {
                letterMap[char, default: 0] += 1
            }
        }

        let n = words.count
        for (letter, count) in letterMap {
            if count % n != 0 { return false }
        }
        return true
    }
}
