class Solution {
    func appendCharacters(_ s: String, _ t: String) -> Int {
        let t = Array(t)
        var j = 0
        for char in s {
            if char == t[j] {
                j += 1
                if j == t.count { return 0 }
            }
        }

        return t.count - j
    }
}
