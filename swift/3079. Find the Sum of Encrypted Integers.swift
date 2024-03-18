class Solution {
    func sumOfEncryptedInt(_ nums: [Int]) -> Int {
        var sum = 0

        for var num in nums {
            var maxDigit = num % 10
            var count = 0
            while num > 0 {
                maxDigit = max(maxDigit, num % 10)
                num /= 10
                count += 1
            }
            let digit = maxDigit
            for _ in 1..<count {
                maxDigit *= 10
                maxDigit += digit
            }

            sum += maxDigit
        }

        return sum
    }
}
