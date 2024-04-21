class Solution {
    func numberOfSpecialChars(_ word: String) -> Int {
        var set = Set<Character>()
        var result = Set<String>()
        for char in word {
            set.insert(char)
            if set.contains(char.lowercased()) && set.contains(char.uppercased()) {
                result.insert(char.lowercased())
            }
        }
        return result.count
    }
}
