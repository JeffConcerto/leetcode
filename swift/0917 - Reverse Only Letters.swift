// Method 1:
class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var letterArray = [Character]()

        for char in s {
            if char.isLetter {
                letterArray.append(char)
            }
        }

        var result = ""
        for char in s {
            if char.isLetter {
                result.append(letterArray.removeLast())
            } else {
                result.append(char)
            }
        }

        return result
        
    }
  
  // Method 2 - Time: 6:38:
  class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var letterArray = [Character]()
        var nonLetterArray = [Character]()

        for char in s {
            if char.isLetter {
                letterArray.append(char)
            } else {
                nonLetterArray.append(char)
            }
        }

        var result = ""
        for char in s {
            if char.isLetter {
                result.append(letterArray.removeLast())
            } else {
                result.append(nonLetterArray.removeFirst())
            }
        }

        return result
        
    }
}
