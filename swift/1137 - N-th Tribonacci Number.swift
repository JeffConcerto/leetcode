class Solution {
    func tribonacci(_ n: Int) -> Int {
        var memo = [Int:Int]()

        func helper(_ n: Int) -> Int {
            if n <= 0 { return 0 }
            if n == 1 || n == 2 { return 1}
            guard let result = memo[n] else {
                memo[n] = helper(n-1) + helper(n-2) + helper(n-3)
                return memo[n]!
            }
            return result
        }

        return helper(n)
    }

}
