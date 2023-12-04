class Solution {
    func findMinimumOperations(_ s1: String, _ s2: String, _ s3: String) -> Int {
        let s1 = Array(s1)
        let s2 = Array(s2)
        let s3 = Array(s3)
        var i = 0
        while i < min(s1.count, s2.count, s3.count) {
            if s1[i] != s2[i] || s1[i] != s3[i] {
                break
            }
            i += 1
        }

        return i == 0 ? -1 : s1.count-i + s2.count-i + s3.count-i
    }
}
