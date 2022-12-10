class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var count = 0

        for num in nums {
            if isEvenDigits(num) { count += 1 }
        }
        
        return count
    }

    private func isEvenDigits(_ num: Int) -> Bool {
        return digitCount(of: num) % 2 == 0
    }

    private func digitCount(of num: Int) -> Int {
        var num = num
        var count = 1

        while num > 9 {
            num /= 10
            count += 1
        }

        return count
    }
}
