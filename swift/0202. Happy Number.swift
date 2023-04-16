class Solution {
    func isHappy(_ n: Int) -> Bool {
        var n = n
        var seen: Set<Int> = [n]
        while n != 1 {
            var temp = n
            n = 0
            while temp > 0 {
                n += (temp % 10) * (temp % 10)
                temp /= 10
            }
            if seen.contains(n) { return false }
            seen.insert(n)
        }
        return true 
    }
}
