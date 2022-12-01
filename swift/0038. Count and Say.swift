class Solution {
    func countAndSay(_ n: Int) -> String {
        guard n > 1 else { 
        return  "1"
        }
        
        let say = countAndSay(n-1)
        var previousChar: Character = "."
        var count = 0
        var result = ""
        for char in say {
            if char == previousChar {
                count += 1
            } else {
                 if count > 0 {
                    result += "\(count)\(previousChar)"
                }
                previousChar = char
                count = 1
            }
        }
        
         if count > 0 {
                    result += "\(count)\(previousChar)"
                }
        
        return result
    }
}
