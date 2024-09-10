class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        let allowed = Set(allowed)
        var total = 0

        for word in words {
            var isConsistent = true
            for char in word {
                if !allowed.contains(char) { 
                    isConsistent = false
                    break
                }
            }
            total += isConsistent ? 1 : 0
        }

        return total
    }
}
