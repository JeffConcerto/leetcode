class Solution {
    func climbStairs(_ n: Int) -> Int {
        var count = 0
        var memo = [Int: Int]()

        func dfs(_ steps: Int) -> Int {
            guard steps > 0 else {
                return steps == 0 ? 1 : 0
            }

            if let result = memo[steps] {
                return result
            }

            memo[steps] = dfs(steps-1) + dfs(steps-2)
            return memo[steps]!
        }


        return dfs(n)
    }
}
