class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        let count = n * n // Max number to add to matrix
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)

        var rowMin = 0, colMin = 0
        var rowMax = n-1, colMax = n-1
        var current = 1

        while current <= count { // Only loop while current number is less than or equal to n squared
            // add row forward:
            for col in colMin...colMax {
                guard current <= count else { break }
                matrix[rowMin][col] = current
                current += 1
                
            }
            rowMin += 1
            if rowMin <= rowMax {
                 // add column down:
                 for row in rowMin...rowMax {
                    guard current <= count else { break }
                    matrix[row][colMax] = current
                    current += 1
                 }
                colMax -= 1
            }

            if colMin <= colMax {
            // add row backward:
                for col in stride(from: colMax, through: colMin, by: -1) {
                    guard current <= count else { break }
                    matrix[rowMax][col] = current
                    current += 1
                }
                rowMax -= 1
            }
            
            if rowMin <= rowMax {
            // add coloumn up:
                for row in stride(from: rowMax, through: rowMin, by: -1) {
                    guard current <= count else { break }
                    matrix[row][colMin] = current
                    current += 1
                }
                colMin += 1
            }
        }

        return matrix
    }
}
