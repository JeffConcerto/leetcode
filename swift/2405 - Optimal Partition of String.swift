class Solution {
    func partitionString(_ s: String) -> Int {
        var count = 0
        var seen = Set<Character>()

        for char in s {
            if seen.contains(char) {
                count += 1
                seen = [char]
            } else {
                seen.insert(char)
            }
        }
        
        return count + 1
    }
}
