class Solution {
    func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {
        let vowels: Set<Character> = ["a","e","i","o","u"]
        var count = 0
        for i in left...right {
            let word = Array(words[i])
            if vowels.contains(word[0]) && vowels.contains(word[word.count-1]) {
                count += 1
            }
        }

        return count
    }
}
