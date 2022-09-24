class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var lastIndex = digits.count - 1
        var digits = digits
        
            digits[lastIndex] = (digits[lastIndex] + 1) % 10 

        while digits[lastIndex] == 0 && lastIndex > 0 {
            lastIndex -= 1
            digits[lastIndex] = (digits[lastIndex] + 1) % 10 
        }
        
        if digits[lastIndex] == 0 {
            digits.insert(1, at: 0)
        }
        
        return digits
    }
}
