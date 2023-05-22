class Solution {
    func minLength(_ s: String) -> Int {
        var s = Array(s)
        var left = 0
        
        while left < s.count-1 {
            if s[left] == "A" && s[left+1] == "B" {
                s.remove(at:left)
                s.remove(at:left)
                left = 0 
            } else if s[left] == "C" && s[left+1] == "D" {
                s.remove(at:left)
                s.remove(at:left)
                left = 0 
            } else {
                left += 1
            }
        }

        return s.count
    }
}
