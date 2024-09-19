class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        let m = grid.count
        let n = grid[0].count

        var maxArea = 0

        for i in 0..<m {
            for j in 0..<n {
                guard grid[i][j] == 1 else { continue }
                let area = dfs(i,j)
                maxArea = max(maxArea, area)
            }
        }

        func dfs(_ i: Int, _ j: Int) -> Int {
            if i < 0 || i >= m || j < 0 || j >= n { return 0 }
            if grid[i][j] == 0 { return 0 }
            grid[i][j] = 0
            var area = 1
            area += dfs(i-1, j) + dfs(i+1,j) + dfs(i,j-1) + dfs(i,j+1)
            return area
        }

        return maxArea
    }
}
