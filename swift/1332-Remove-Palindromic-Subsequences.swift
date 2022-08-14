// This problem is made silly due to the string consisting 
// of only "a" and "b" and the subsequence not needing to 
// be contiguous.

class Solution {
    func removePalindromeSub(_ s: String) -> Int {
        var string = Array(s)
        
        return isPalindrome(string) ? 1 : 2
    }
    
    func isPalindrome(_ string: [Character]) -> Bool {
        let endIndex = string.count - 1
        for index in 0..<string.count / 2 {
            if string[index] != string[endIndex - index] { return false }
        }
        
        return true
    }
}
