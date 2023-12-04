class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }
        let s = Array(s)
        let t = Array(t)

        var map = [Character:Character]()
        var used = Set<Character>()

        for i in 0..<s.count {
            if let matchingChar = map[s[i]] {
                if matchingChar != t[i] { return false }
            } else {
                if used.contains(t[i]) { return false }
                used.insert(t[i])
                map[s[i]] = t[i]
            }
        }

        return true
    }
}
