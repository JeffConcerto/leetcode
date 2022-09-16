class Solution {
    func checkZeroOnes(_ s: String) -> Bool {
        var maxZero = 0
        var maxOne = 0
        var previousChar: Character = "?"
        var currentLength = 0
        
        for char in s {
            if char == previousChar {
                currentLength += 1        
            } else {
                if previousChar == "0" {
                    maxZero = max(maxZero, currentLength)
                } else {
                    maxOne = max(maxOne, currentLength)
                }
                currentLength = 1
            }
            previousChar = char
        }
        
        if previousChar == "0" {
            maxZero = max(maxZero, currentLength)                
        } else {
             maxOne = max(maxOne, currentLength)
        }
        
        return maxOne > maxZero
    }
}
