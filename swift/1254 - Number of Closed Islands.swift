class Solution {
    func closedIsland(_ grid: [[Int]]) -> Int {
        var seen = grid

        func dfs(_ row: Int, _ col: Int) -> Bool {
            guard row >= 0, row < grid.count,
                col >= 0, col < grid[0].count else { return false }
            
            if grid[row][col] == 1 || seen[row][col] == 1 { return true }
            seen[row][col] = 1

                let up = dfs(row-1,col)
                let down = dfs(row+1,col)
                let left = dfs(row,col-1)
                let right = dfs(row,col+1)

                return up && down && left && right
        }

        var islands = 0

         for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                guard seen[row][col] == 0 else { continue }
                if dfs(row,col) { islands += 1 }
            }
        }
        return islands
    }
}
