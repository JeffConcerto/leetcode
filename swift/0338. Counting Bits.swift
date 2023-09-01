class Solution {
    func countBits(_ n: Int) -> [Int] {
        var result = [Int]()

        for var num in 0...n {
            var ones = 0
            while num > 0 {
                ones += num % 2
                num /= 2
            }

            result.append(ones)
        }

        return result
    }
}
