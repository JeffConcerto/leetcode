class Solution {
    func largestLocal(_ grid: [[Int]]) -> [[Int]] {
        var maxLocal = Array(repeating: Array(repeating: 0, count: grid.count - 2), count: grid.count - 2)
        
        for row in 0..<grid.count - 2 {
            for col in 0..<grid.count - 2 {
                for i in row..<row+3 {
                    for j in col..<col+3 {
                        maxLocal[row][col] = max(maxLocal[row][col], grid[i][j])
                    }
                }
            }
        }
        
        return maxLocal
    }
}
