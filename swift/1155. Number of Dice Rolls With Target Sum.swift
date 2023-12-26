class Solution {
    func numRollsToTarget(_ n: Int, _ k: Int, _ target: Int) -> Int {
        let mod = 1_000_000_007
        var memo = [[Int]: Int]()

        func dfs(_ i: Int, _ total: Int) -> Int {
            if total == target && i == n { return 1 }
            if total >= target || i == n { return 0 }
            if let cache = memo[[i,total]] { return cache }
            var result = 0

            for roll in 1...k{
                result = (result + dfs(i+1, total + roll)) % mod
            }

            memo[[i,total]] = result
            return result 
        }

        return dfs(0,0)
    }
}
