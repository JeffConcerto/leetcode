class Solution {
    func repeatedCharacter(_ s: String) -> Character {
        var set: Set<Character> = []
        
        for char in s {
            if set.contains(char) { return char}
            set.insert(char)
        }
        
        return "a"
    }
}
