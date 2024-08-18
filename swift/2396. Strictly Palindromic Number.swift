class Solution {
    func isStrictlyPalindromic(_ n: Int) -> Bool {
        for i in 2...n-2 {
            var base = [Int]()
            var num = n
            while num > 0 {
                base.append(num%i)
                num /= i
            }

            for i in 0..<base.count {
                if base[i] != base[base.count-1-i] { return false}
            }
        }

        return true
    }
}
