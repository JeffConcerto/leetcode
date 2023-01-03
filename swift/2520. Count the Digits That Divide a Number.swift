class Solution {
    func countDigits(_ num: Int) -> Int {
        var count = 0
        var digits = num

        while digits > 0 {
            let r = digits % 10
            if num % r == 0 { count += 1 }
            digits /= 10
        }

        return count
    }
}
