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
