
class Solution {
    func minimumMoves(_ s: String) -> Int {
        var s = Array(s)
        
        var count = 0
        
        for index in 0..<s.count {
            if s[index] == "X" {
                if index + 2 < s.count {
                    for j in 0..<3 {
                        s[index + j] = "O"
                    }
                } else {
                    let newIndex = index - 3 + s.count - index
                    for j in 0..<3 {
                        s[newIndex + j] = "O"
                    }
                }
                
                count += 1
            }                          
        }
        return count
    }
}
