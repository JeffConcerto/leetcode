class Solution {
    func luckyNumbers (_ matrix: [[Int]]) -> [Int] {
        var maxSet: Set<Int> = []
        var minSet: Set<Int> = []
        
        for row in matrix {
            var rowMin = Int.max
            for value in row {
                rowMin = min(rowMin, value)
            }
            minSet.insert(rowMin)
        }
        
        for col in 0..<matrix[0].count {
            var colMax = 0
            for row in 0..<matrix.count {
                colMax = max(matrix[row][col], colMax)
            }
            maxSet.insert(colMax)
        }
        
        return Array(maxSet.intersection(minSet))
    }
}
