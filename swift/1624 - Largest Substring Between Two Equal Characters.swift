class Solution {
    func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
        var s = Array(s)
        var maxCount = -1
        
        var i = 0
        var j = s.count - 1
        
        while i < j && (j-i-1 > maxCount) {
            if s[i] == s[j] { 
                maxCount = max(maxCount, j - i - 1)
                
            } else {
               var tempJ = j - 1
                while i < tempJ {
                    if s[i] == s[tempJ] {maxCount = max(maxCount, tempJ-i-1)}
                    tempJ -= 1
                }  
            }
           
            i += 1
        }
                
        return maxCount
        
    }
}
