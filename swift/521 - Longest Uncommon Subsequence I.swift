class Solution {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        if a.count != b.count { return max(a.count, b.count) }
        let a = Array(a)
        let b = Array(b)
        let minCount = min(a.count, b.count)
                
        for i in 0..<minCount {
            if a[i] != b[i] { return max(a.count, b.count) }
        }
        
        return -1
    }
}
