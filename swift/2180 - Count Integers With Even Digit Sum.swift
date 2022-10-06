class Solution {
    func countEven(_ num: Int) -> Int {
        guard num > 1 else { return 0 }
        var evenCount = 0
        
        for digit in 2...num {
            if isEvenDigitSum(digit) { evenCount += 1 }
        }
        
        return evenCount
    }
    
    private func isEvenDigitSum(_ num: Int) -> Bool {
        var num = num
        var sum = 0
        
        while num > 0 {
            sum += num % 10
            num /= 10
        }
        
        return sum % 2 == 0
    }
}
