class Solution {
    func equalPairs(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var rowMap = [Int:[Int]]()
        var colMap = [Int:[Int]]()

        for row in 0..<n {
            for col in 0..<n {
                rowMap[row, default: []].append(grid[row][col])
                colMap[col, default: []].append(grid[row][col])
            }
        }

        var count = 0 

        for (i, row) in rowMap {
            for (j, col) in colMap {
                if row == col { count += 1 }
            }
        }

        return count
        
    }
}
