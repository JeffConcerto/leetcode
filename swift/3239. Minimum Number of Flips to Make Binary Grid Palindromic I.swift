class Solution {
    func minFlips(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var rowDiff = 0
        for row in 0..<m {
            for col in 0..<n/2 {
                if grid[row][col] != grid[row][n-1-col] {
                    rowDiff += 1
                }
            }
        }

        var colDiff = 0
        
        for col in 0..<n {
            for row in 0..<m/2 {
                if grid[row][col] != grid[m-1-row][col] {
                    colDiff += 1
                }
            }
        }

        return min(rowDiff,colDiff)
    }
}
