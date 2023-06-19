class Solution {
    func countPaths(_ grid: [[Int]]) -> Int {
        let mod = 1_000_000_000 + 7
        let m = grid.count
        let n = grid[0].count
        var memo = [String:Int]()

        func dfs(_ row: Int, _ col: Int, _ previousValue: Int) -> Int {
            guard row >= 0 && row < m && col >= 0 && col < n else { return 0 }
            if previousValue >= grid[row][col] { return 0 }
            if let cache = memo["\(row),\(col)"] {
                return cache
            }
            var result = 1

            result += dfs(row+1,col, grid[row][col])
            result += dfs(row-1,col, grid[row][col])
            result += dfs(row,col+1, grid[row][col])
            result += dfs(row,col-1, grid[row][col])
            
            memo["\(row),\(col)"] = result % mod
            return memo["\(row),\(col)"]!
        }
        let total = m*n

        var answer = 0
       

        for row in 0..<m {
            for col in 0..<n {
                if let cache = memo["\(row),\(col)"] {
                    answer = (answer + cache) % mod
                } else {
                    answer = (answer + dfs(row, col, 0)) % mod
                }
            }
        }

        return answer
    }
}
