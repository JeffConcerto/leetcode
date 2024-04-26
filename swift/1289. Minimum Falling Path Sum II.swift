class Solution {
    func minFallingPathSum(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var memo = [[Int]:Int]()
        func dfs(_ row: Int, _ prevCol: Int) -> Int {
            if row == n { return 0 }
            if let cache = memo[[row,prevCol]] { return cache}
            var minSum = Int.max
            for col in 0..<n {
                if col == prevCol { continue }
                minSum = min(minSum, grid[row][col] + dfs(row+1,col))
            }
            memo[[row,prevCol]] = minSum
            return minSum
        }

        return dfs(0,-1)   
    }
}
