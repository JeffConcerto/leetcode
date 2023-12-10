class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        let m = matrix.count
        let n = matrix[0].count
        var result = Array(repeating: Array(repeating: 0, count: m), count: n)
     
        for row in 0..<m {
            for col in 0..<n {
                result[col][row] = matrix[row][col]
            }
        }

        return result
    }
}
