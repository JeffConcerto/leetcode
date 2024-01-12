class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        let vowels: Set<Character> = Set(["a","e","i","o","u"])
        let s = Array(s.lowercased())
        var count = 0
        let n = s.count
        for i in 0..<n/2 {
            count += vowels.contains(s[i]) ? 1 : 0
            count -= vowels.contains(s[n-1-i]) ? 1 : 0
        }

        return count == 0
    }
}
