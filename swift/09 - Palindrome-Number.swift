
// Without converting the integer to a string
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        var xAsArray: [Int] = []
        
        var number = x
        while number > 0 {
            let lastDigit = number % 10
            xAsArray.append(lastDigit)
            number /= 10
        }
        
        let size = xAsArray.count
        
        for index in 0..<size / 2 {
            if xAsArray[index] != xAsArray[size - 1 - index] { return false }
        }
        
        return true
    }
}
