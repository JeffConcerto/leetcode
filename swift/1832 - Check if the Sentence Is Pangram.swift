class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var set: Set<Character> = Set(Array("abcdefghijklmnopqrstuvwyxz"))

        for char in sentence {
            if set.contains(char) {
                set.remove(char)
            }
        }
        
        return set.isEmpty
    }
}
