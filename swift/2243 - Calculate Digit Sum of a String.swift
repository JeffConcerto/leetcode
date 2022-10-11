class Solution {
    func digitSum(_ s: String, _ k: Int) -> String {
        var currentString = s
        
        while currentString.count > k {
            var tempString = ""
            var index = 1
            var currentSum = 0

            for char in currentString {
                currentSum += char.wholeNumberValue!
                if index % k == 0 {
                    tempString += String(currentSum)
                    currentSum = 0
                }
                index += 1
            }
            
            if (index - 1) % k != 0 {
                tempString += String(currentSum)
            }
            
            currentString = tempString
        }
        
        return currentString
    }
}
