class Solution {
    var memo = [Int: Int]()

    func tribonacci(_ n: Int) -> Int {
        guard n > 2 else {
            return n == 0 ? 0 : 1
        }
        if let cache = memo[n] {
            return cache
        }
        let result = tribonacci(n-1) + tribonacci(n-2) + tribonacci(n-3)
        memo[n] = result
        return result
    }
}
