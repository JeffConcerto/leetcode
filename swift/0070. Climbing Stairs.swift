class Solution {
    func climbStairs(_ n: Int) -> Int {
        var memo = [Int:Int]()

        func dfs(_ step: Int) -> Int {
            if step >= n {
                return step == n ? 1 : 0
            }
            if let cache = memo[step] { return cache }
            var result = 0
            result += dfs(step+1)
            result += dfs(step+2)
            memo[step] = result
            return result
        }

        return dfs(0)
    }
}
