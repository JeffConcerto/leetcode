class Solution {
    func checkString(_ s: String) -> Bool {
        var hasSeenB = false
        
        for char in s {
            if char == "a" && hasSeenB { 
                return false
            }
            else if char == "b" {
                hasSeenB = true
            }
        }
        
        return true
    }
}
