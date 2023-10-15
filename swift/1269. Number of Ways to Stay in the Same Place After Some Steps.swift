class Solution {
    func numWays(_ steps: Int, _ arrLen: Int) -> Int {
        let mod = 1_000_000_007
        var memo = [[Int]:Int]()
        func dfs(_ i: Int, _ taken: Int) -> Int {
            if i < 0 || i == arrLen { return 0 }
            if taken == steps { return i == 0 ? 1 : 0 }
            if let cache = memo[[i,taken]] { return cache }
            var result = 0
            result += dfs(i+1, taken+1)
            result += dfs(i-1, taken+1)
            result += dfs(i, taken+1)
            result %= mod
            memo[[i,taken]] = result 
            return result
        }
        
        return dfs(0,0)
    }
}
