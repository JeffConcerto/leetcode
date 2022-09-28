class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        let set = Set(allowed)
        var totalConsistent = 0
        for word in words {
            var isConsistent = true
            for letter in word {
                if !set.contains(letter) { isConsistent = false; break }
            }
            if isConsistent { totalConsistent += 1}
        }
        
        return totalConsistent
    }
}
