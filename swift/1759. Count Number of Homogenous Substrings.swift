class Solution {
    func countHomogenous(_ s: String) -> Int {
     let mod = 1_000_000_007
     let s = Array(s)
     var count = 0
     var left = 0

     for right in 0..<s.count {
         if s[right] != s[left] {
             count += ((right-left) * (right-left+1) / 2) % mod
             left = right
         }
     }

        count += ((s.count-left) * (s.count-left+1) / 2) % mod

        return count
    }
}
