class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var n = n
        var ones = 0
        while n > 0 {
            ones += n % 2
            n /= 2
        }

        return ones
    }
}
