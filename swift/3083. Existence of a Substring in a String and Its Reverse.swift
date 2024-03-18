class Solution {
    func isSubstringPresent(_ s: String) -> Bool {
        let s = Array(s)
        var map = [String:Bool]()

        for i in 0..<s.count-1 {
            map["\(s[i])\(s[i+1])"] = true
        }

        for i in stride(from: s.count-1, to:0, by:-1) {
            if (map["\(s[i])\(s[i-1])"] ?? false) {
                return true
            }
        }

        return false
    }
}
