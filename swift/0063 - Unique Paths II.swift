class Solution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        var memo = [[Int]: Int]()

        return helper(obstacleGrid, 0, 0, &memo)
    }

    private func helper(_ grid: [[Int]], _ row: Int, _ col: Int, _ memo: inout [[Int]: Int]) -> Int {
        guard row < grid.count && col < grid[0].count else { return 0 }
        guard grid[row][col] == 0 else { return 0 }

        if row == grid.count-1 && col == grid[0].count-1 { return 1 }

        if let memoPaths = memo[[row, col]] {
            return memoPaths
        }

        let downPaths = helper(grid, row+1, col, &memo)
        let rightPaths = helper(grid, row, col+1, &memo)

        memo[[row, col]] = downPaths + rightPaths
        return memo[[row,col]]!
    }
}
