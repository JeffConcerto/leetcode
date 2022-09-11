class Solution {
    func checkOnesSegment(_ s: String) -> Bool {       
        var segments = 1
        var s = Array(s)
        var previousChar = s[0]
        var segmentBreak = false
        
        for index in 1..<s.count {
            if previousChar == "0" && s[index] == "1" { return false }
            previousChar = s[index]
        }
        
        return true
    }
}
