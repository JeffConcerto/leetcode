class Solution {
    func minOperations(_ s: String) -> Int {
        let s = Array(s)
        
        var currentNum = s[0] == "0" ? "0" : "1"
        var otherNum = currentNum == "0" ? "1" : "0"
        
        var count1 = 0
        var count2 = 1
        
        for index in 1..<s.count {
            currentNum = currentNum == "0" ? "1" : "0"
            otherNum = otherNum == "0" ? "1" : "0"
            if String(s[index]) != currentNum { count1 += 1 }
            if String(s[index]) != otherNum { count2 += 1 }
        }
            
        return min(count1, count2)
    }
}
