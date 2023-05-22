class Solution {
    func minLength(_ s: String) -> Int {
        var s = Array(s)
        var left = 0
        
        while left < s.count-1 {
                if s[left] == "A" {
                    if s[left+1] == "B" {
                        s.remove(at:left)
                        s.remove(at:left)
                        left = 0 
                        continue
                    }
                } else if s[left] == "C" {
                    if s[left+1] == "D" {
                        s.remove(at:left)
                        s.remove(at:left)
                        left = 0 
                        continue
                    }
                }
                left += 1
            }

        return s.count
    }
}
