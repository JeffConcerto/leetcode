class Solution {
    func secondHighest(_ s: String) -> Int {
        var largestDigit = -1
        var secondLargest = -1
        
        for char in s {
            if let num = Int(String(char)) {
                if num > largestDigit {
                    secondLargest = largestDigit
                    largestDigit = num
                } else if num > secondLargest && num != largestDigit {
                    secondLargest = num
                }
            }
        }
        
        return secondLargest
    }
}
