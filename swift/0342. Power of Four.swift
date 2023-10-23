class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        if n < 1 { return false }
        var num = n

        while num > 1 {
            if num % 4 != 0 { return false }
            num /= 4
        }

        return true
    }
}
