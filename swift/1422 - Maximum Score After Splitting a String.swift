class Solution {
    func maxScore(_ s: String) -> Int {
        var s = Array(s)
        var zeroCount = 0 
        
        for char in s {
            if char == "0" { zeroCount += 1 }
        }
        
        if zeroCount == 0 {
            return s.count - 1
        } else if zeroCount == s.count {
            return s.count - 1
        }
               
        var maxScore = 0
        var currentZeroCount = 0
        var currentOneCount = 0
        
        if s.last! == "1" {
            currentOneCount = 1
            currentZeroCount = zeroCount
        } else {
            currentZeroCount = zeroCount - 1
        }
        
        maxScore = currentOneCount + currentZeroCount
        
        for i in 1..<s.count-1 {
            if s[s.count - i - 1] == "1" {
                currentOneCount += 1
            } else {
                currentZeroCount -= 1
            }
            
            maxScore = max(maxScore, currentOneCount + currentZeroCount)    
        }
        
            
        return maxScore
    }
}
