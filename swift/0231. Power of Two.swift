class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        // Power of two will have only one one binary digit:
        var ones = 0
        var n = n
        while n > 0 {
            ones += n & 1
            n >>= 1
        }

        return ones == 1
    }
}
