class Solution {
    func checkValid(_ matrix: [[Int]]) -> Bool {
        let n = matrix.count
        var answerSet: Set<Int> = Set(Array(1...n))
        
        for i in 0..<matrix.count {
            var rowSet: Set<Int> = []
            var colSet: Set<Int> = []

            for j in 0..<matrix[i].count {
                rowSet.insert(matrix[i][j])
                colSet.insert(matrix[j][i])
            }
            
            if rowSet != answerSet || colSet != answerSet { return false}
        }
        
        
        return true
    }
}
