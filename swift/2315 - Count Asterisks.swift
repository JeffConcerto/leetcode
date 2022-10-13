class Solution {
    func countAsterisks(_ s: String) -> Int {
        var isBetweenBars = false
        var count = 0
        
        for char in s {
            if char == "|" {
                isBetweenBars = !isBetweenBars
            } else if !isBetweenBars {
                if char == "*" { count += 1 }
            }
        }
        
        return count
    }
}
