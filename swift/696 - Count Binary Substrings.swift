class Solution {
    func countBinarySubstrings(_ s: String) -> Int {
        var s = Array(s)
        var count = 0 
        var index = 1
        var firstCount = 1
        var secondCount = 0
        
        while index < s.count {
            if s[index-1] != s[index] {
                count += min(firstCount, secondCount)
                secondCount = firstCount 
                firstCount = 1
            } else {
                firstCount += 1
            }
            index += 1
        }
        
        count += min(firstCount, secondCount)

        
        return count
    }
    
} 
