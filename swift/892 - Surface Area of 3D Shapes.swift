class Solution {
    func surfaceArea(_ grid: [[Int]]) -> Int {
        var result = 0
        let n = grid.count
        
        for i in 0..<n {
            for j in 0..<n {
                if grid[i][j] > 0 {
                    result += grid[i][j] * 4 + 2
                }
                if i > 0 { result -= min(grid[i][j], grid[i-1][j]) * 2}
                if j > 0 { result -= min(grid[i][j], grid[i][j-1]) * 2}
            }
        }
        
        return result
    }
}

