class Solution {
    func canBeEqual(_ s1: String, _ s2: String) -> Bool {
        guard s1 != s2 else { return true }
        var s1 = Array(s1)
        var s2 = Array(s2)

       var i = 0

        while i < s1.count {
            if s1[i] != s2[i] {
                var foundSwap = false
                for j in i+1..<s1.count where j-i == 2 {
                    if s1[i] == s2[j] && s2[i] == s1[j] {
                            foundSwap = true 
                            s1.swapAt(i,j)
                            break
                    }
                }
                if !foundSwap { return false}
            }
            i += 1
        }
        
        return true
        
    }
}
