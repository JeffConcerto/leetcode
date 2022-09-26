// Method 1
class Solution {
    func areNumbersAscending(_ s: String) -> Bool {
        let words = s.components(separatedBy: " ")
        var previousNum = Int.min
        
        for word in words {
            if let num = Int(word) {
                if previousNum >= num { return false }
                previousNum = num
            } 
        }
        
        return true
    }
}

// Method 2
class Solution {
    func areNumbersAscending(_ s: String) -> Bool {
        var previousNum = Int.min
        var lastNum = Int.min
        var lastCharIsNum = false
        
        for char in s {
            if let num = char.wholeNumberValue {
                if lastCharIsNum {
                    lastNum *= 10
                    lastNum += num
                } else {
                     lastNum = num
                }
                lastCharIsNum = true   
            } else {
                if lastCharIsNum {
                    if previousNum >= lastNum { return false}
                }
                previousNum = lastNum
                lastCharIsNum = false
            }
        }
        
         if lastCharIsNum {
            if previousNum >= lastNum { return false}
        }
        
        return true
    }
}
