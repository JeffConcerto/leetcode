class Solution {
    func reverse(_ x: Int) -> Int {
        let sign = x < 0 ? -1 : 1
        var x = abs(x)
        var sum = 0
        while x > 0 {
            sum *= 10
            sum += x % 10
            x /= 10
        }
        let result = sum * sign
        if result < Int(Int32.min) || result > Int(Int32.max) {
            return 0
        }
        return result
    }
}
