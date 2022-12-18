// Got the idea to transpose and reverse the matrix from solutions. Implemented in-place transpose and reverse on my own:
class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        transpose(&matrix)
        reverse(&matrix)
    }

    private func transpose(_ matrix: inout [[Int]]) {
        // Move first column to first row:
        for y in 0..<matrix.count {
            // y = row #
            for x in y..<matrix.count { // For proper transpose, need to skip items already swaped. Start at y.
                // x = column #
                // y stays static, while x grows.
                // Thus iterating from Y to N:
                // Example: y = 1, x = 1...N:
                // matrix[0][0..<n] = matrix[0..<n][0]
                let temp = matrix[y][x] // Store value being replaced for swap.
                matrix[y][x] = matrix[x][y] // Transpose column to row
                matrix[x][y] = temp // Complete swap.
            }
        }
    }

    private func reverse(_ matrix: inout [[Int]]) {
        let n = matrix.count - 1 // Get number of elements in each row/column for easy use when swapping

        // Iterate over each row, swaping first item with last item
        for y in 0..<matrix.count {
            for x in 0..<matrix.count / 2 { // Only need to iterate over half of each row, since swapping frotn with back
                let firstValue = matrix[y][x] // Temporarily store first value in variable to swap later
                matrix[y][x] = matrix[y][n-x] // Move last value into first value position
                matrix[y][n-x] = firstValue // Move first value into last value postion. Complete the swap
            }
        }
    }
}
