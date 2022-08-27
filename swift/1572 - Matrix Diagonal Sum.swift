class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        
        var sum = 0
        let rows = mat.count
        var index = 0
        
        // Primary Diagonal
        while index != rows {
            sum += mat[index][index]
            index += 1
        }
        
        index = 0
        var colIndex = rows - 1
        
        // Secondary Diagonal
            while index != rows {
            sum += mat[index][colIndex]
            index += 1
            colIndex -= 1
        }
        
        // Remove duplicate
        if rows % 2 == 1 {
            sum -= mat[rows/2][rows/2]
        }
        
        return sum
        
    }
}
