class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        var matrix = Array(repeating: Array(repeating: 0, count: grid[0].count), count: grid.count)
        matrix[0][0] = grid[0][0]
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[0].count {
                if i == 0 && j == 0 { continue }
                let aboveValue = i > 0 ? matrix[i-1][j] : Int.max
                let leftValue = j > 0 ? matrix[i][j-1] : Int.max

                matrix[i][j] = min(aboveValue, leftValue) + grid[i][j]
            }
        }

        return matrix[grid.count-1][grid[0].count-1]
    }
}
