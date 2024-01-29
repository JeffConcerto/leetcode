class Solution {
    func countKeyChanges(_ s: String) -> Int {
        let s = Array(s.lowercased())
        var changes = 0
        for i in 1..<s.count {
            if s[i] != s[i-1] { changes += 1 }
        }

        return changes
    }
}
