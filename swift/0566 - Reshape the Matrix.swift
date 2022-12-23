class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let originalR = mat.count
        let originalC = mat[0].count
        guard originalR * originalC == r * c else { return mat }
        var newMatrix = Array(repeating: Array(repeating: 0, count: c), count: r)

        for i in 0..<originalR {
            for j in 0..<originalC {
                let index = (i * originalC + j) 
                newMatrix[index / c][index % c] = mat[i][j]
            }
        }

        return newMatrix
    }
}
