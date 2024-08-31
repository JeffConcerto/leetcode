// New Solution:
// Given the constraints of n >= 4 && n-2 base, the answer will always be false beause the n-2 base will be 1 2 and not a palindrome

class Solution {
    func isStrictlyPalindromic(_ n: Int) -> Bool {
        return false
    }
}

// Old Solution:
class Solution {
    func isStrictlyPalindromic(_ n: Int) -> Bool {
        for i in 2...n-2 {
            var base = [Int]()
            var num = n
            while num > 0 {
                base.append(num%i)
                num /= i
            }

            for i in 0..<base.count/2 {
                if base[i] != base[base.count-1-i] { return false}
            }
        }

        return true
    }
}
