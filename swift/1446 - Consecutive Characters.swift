class Solution {
    func maxPower(_ s: String) -> Int {
        var maxCount = 0
        var currentCount = 0
        var currentLetter: Character = "."
        
        for letter in s {
            if letter == currentLetter {
                currentCount += 1
            }  else {
                maxCount = max(maxCount, currentCount)
                currentLetter = letter
                currentCount = 1
            }
        }
        
        return max(maxCount, currentCount)
    }
}

// Method 2:
class Solution {
    func maxPower(_ s: String) -> Int {
        var s = Array(s)
        var currentCount = 1
        var maxCount = Int.min

        for i in 1..<s.count {
            if s[i] == s[i-1] {
                currentCount += 1
            } else {
                maxCount = max(currentCount, maxCount)
                currentCount = 1
            }
        }

         maxCount = max(currentCount, maxCount)

         return maxCount
    }
}
