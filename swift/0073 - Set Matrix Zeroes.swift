class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        let m = matrix.count
        let n = matrix[0].count
        var rowColToSet = [[Int]]()

        for i in 0..<m {
            for j in 0..<n {
                guard matrix[i][j] == 0 else { continue }
                rowColToSet.append([i,j])
            }
        }

        for rowCol in rowColToSet {
            setRowToZero(rowCol[0], n, &matrix)
            setColumnToZero(rowCol[1], m, &matrix)
        }
    }

    private func setRowToZero(_ row: Int, _ columns: Int, _ matrix: inout [[Int]]) {
        for i in 0..<columns {
            matrix[row][i] = 0
        }
    }

    private func setColumnToZero(_ column: Int, _ rows: Int, _ matrix: inout [[Int]]) {
        for i in 0..<rows {
            matrix[i][column] = 0
        }
    }
}
