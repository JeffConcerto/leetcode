class Solution {
    func findBall(_ grid: [[Int]]) -> [Int] {
        let m = grid.count
        let n = grid[0].count
        var result = [Int]()
        // Iterate over each ball, checking where it falls:
        for i in 0..<n {
            // Each ball must pass through the grid:
            var row = 0
            var col = i
            var resultFound = false
            while !resultFound {
                // If reached end of row, ball passed through.
                // Return last col:
                if row == m { 
                    resultFound = true
                    result.append(col)
                    break
                }
                // Check for blocked ways:
                if (col < n-1 && grid[row][col] == 1 && grid[row][col+1] == -1) ||
                (col > 0 && grid[row][col] == -1 && grid[row][col-1] == 1) ||
                    (col == 0 && grid[row][col] == -1) || (col == n-1 && grid[row][col] == 1)
                 {
                    resultFound = true
                    result.append(-1)
                    break
                }

                // Update ball location:
                if grid[row][col] == 1 {
                    col += 1
                } else {
                    col -= 1
                }
                row += 1
            }
        }

        return result
    }
}
