class Solution {
    func getMaximumGold(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count

        func dfs(_ row: Int, _ col: Int, _ visited: inout Set<Int>) -> Int {
            if row < 0 || row >= m || col < 0 || col >= n { return 0 }
            if grid[row][col] == 0 { return 0 }
            if visited.contains(row*n+col) { return 0 }
            visited.insert(row*n+col)
            let up = dfs(row+1,col, &visited)
            let down = dfs(row-1,col, &visited)
            let right = dfs(row,col+1, &visited)
            let left = dfs(row,col-1, &visited)
            visited.remove(row*n+col)
            return max(up,down,left,right) + grid[row][col]
        }
        var maxGold = 0
        var visited = Set<Int>()
        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] != 0 {
                    maxGold = max(maxGold, dfs(i,j,&visited))
                }
            }
        }

        return maxGold
    }
}
