// Needed help to pass edge cases:
class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
        guard n != 0 else { return 1 }
        if x == 1 { return x }
        var x = x
        var n = n
        var sumX = 1.0

        if n < 0 {
            x = 1 / x
            n = -n
        }

        while n > 0 {
            if n % 2 == 1 {
                sumX *= x
            }
            x *= x
            n /= 2
        }
       
        return sumX
    }
}
