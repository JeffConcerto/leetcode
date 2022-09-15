class Solution {
    func countGoodSubstrings(_ s: String) -> Int {
        var s = Array(s)
        var count = 0
        for i in 0..<s.count where i + 2 < s.count {
            var set: Set<Character> = [s[i]]
            count += 1
            for j in i + 1..<i + 3 {
                if set.contains(s[j]) { 
                    count -= 1; break 
                } else {
                    set.insert(s[j])
               }
             }
        }
        
        return count
    }
}
