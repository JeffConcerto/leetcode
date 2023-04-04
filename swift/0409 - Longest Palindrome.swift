class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var set = Set<Character>()

        for char in s {
            if set.contains(char) {
                set.remove(char)
            } else {
                set.insert(char)
            }
        }

        if set.isEmpty { return s.count }
        let matchedCount = s.count - set.count
        
        return matchedCount + 1
    }
}
