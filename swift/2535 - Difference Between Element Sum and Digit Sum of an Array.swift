class Solution {
    func differenceOfSum(_ nums: [Int]) -> Int {
        var elementSum = 0
        var digitSum = 0

        for num in nums {
            elementSum += num
            digitSum += addDigits(of: num)
        }

        return abs(elementSum - digitSum)
    }

    private func addDigits(of num: Int) -> Int {
        var digits = String(num)
        var sum = 0
        for digit in digits {
            sum += digit.wholeNumberValue!
        }

        return sum
    }
}
