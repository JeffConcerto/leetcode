class Solution {
    func onesMinusZeros(_ grid: [[Int]]) -> [[Int]] {
        let m = grid.count
        let n = grid[0].count
        var diff = grid
        var onesRow = Array(repeating:0, count: m)
        var onesCol = Array(repeating: 0, count: n)

        for row in 0..<m {
            for col in 0..<n {
                onesRow[row] += grid[row][col]
                onesCol[col] += grid[row][col]
            }
        }

        for row in 0..<m {
            for col in 0..<n {
                diff[row][col] = onesRow[row] + onesCol[col] - (m-onesRow[row]) - (n-onesCol[col]) 
            }
        }

        return diff
    }
}
