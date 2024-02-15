class Solution {
    func modifiedMatrix(_ matrix: [[Int]]) -> [[Int]] {
        var answer = matrix
        var maxCol = Array(repeating: 0, count: matrix[0].count)

        for row in 0..<matrix.count {
            for col in 0..<matrix[0].count {
                maxCol[col] = max(maxCol[col], matrix[row][col])
            }
        }

        for row in 0..<answer.count {
            for col in 0..<answer[0].count {
                if answer[row][col] == -1 {
                    answer[row][col] = maxCol[col]
                }
            }
        }

        return answer
    }
}
