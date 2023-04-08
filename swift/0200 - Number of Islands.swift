class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var m = grid.count
        var n = grid[0].count
        var grid = grid

        func dfs(_ row: Int, _ col: Int) -> Bool {
            guard row >= 0, row < m, col >= 0, col < n 
            else { return true }
            if grid[row][col] == "0" { return true }
            if grid[row][col] == "2" { return true }

            grid[row][col] = "2"

            return dfs(row+1,col) && dfs(row-1,col) &&
                dfs(row,col-1) && dfs(row,col+1)
        }

        var islands = 0

        for i in 0..<m {
            for j in 0..<n {
                guard grid[i][j] == "1" else { continue}
                if dfs(i,j) { islands += 1}
            }
        }

        return islands
    }
}
