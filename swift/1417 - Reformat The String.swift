// Method 1
class Solution {
    func reformat(_ s: String) -> String {
        var letterCount = 0
        var digitCount = 0
        for char in s {
            if char.isLetter {
                letterCount += 1
            } else {
                digitCount += 1
            }
        }
        
        if abs(letterCount - digitCount) > 1 { return "" }
        
        var string = Array(s)
        
        var letterIndex = 0
        var numberIndex = 0
        
        let letterFirst = letterCount > digitCount
        
        var result = ""
        
        
        while result.count != s.count {
            if letterFirst {
                while !string[letterIndex].isLetter {
                    letterIndex += 1
                }
                result += letterIndex < s.count ? s[letterIndex] : String("")
                letterIndex += 1
                
                while !string[numberIndex].isNumber {
                    numberIndex += 1
                }
                result += numberIndex < s.count ? s[numberIndex] : ""
                numberIndex += 1    
            } else {
                 while !string[numberIndex].isNumber {
                    numberIndex += 1
                }
                result += numberIndex < s.count ? s[numberIndex] : ""
                numberIndex += 1  
                
                  while !string[letterIndex].isLetter {
                    letterIndex += 1
                }
                result += letterIndex < s.count ? s[letterIndex] : ""
                letterIndex += 1
            }
        }
       
        return result
    }
}


// Method 2
class Solution {
    func reformat(_ s: String) -> String {
        var letterCount = 0
        var digitCount = 0
        for char in s {
            if char.isLetter {
                letterCount += 1
            } else {
                digitCount += 1
            }
        }
        
        if abs(letterCount - digitCount) > 1 { return "" }
        
        var letters = Array(s).filter { $0.isLetter }
        var numbers = Array(s).filter { $0.isNumber }
        
        var result = ""
        var firstCharIsLetter = false
        if letters.count != numbers.count {
            if letters.count > numbers.count {
                result.append(letters.removeLast())
                firstCharIsLetter = true
            } else {
                result.append(numbers.removeLast())
            }
        }
        
        
        if firstCharIsLetter {
            while result.count != s.count {
            result.append(numbers.removeLast())
            result.append(letters.removeLast())
        }
        } else {
            while result.count != s.count {
            result.append(letters.removeLast())
            result.append(numbers.removeLast())
        }
        }
        
    return result
    }
}
