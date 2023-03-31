class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let word = Array(word)
        let rows = board.count
        let cols = board[0].count
        var seen = Array(repeating: Array(repeating: false, count: cols), count: rows)

        func isValid(_ row: Int, _ col: Int, _ wordIndex: Int)-> Bool {
            guard wordIndex < word.count else { return true }
            guard row >= 0, row < rows, col >= 0, col < cols else { return false }
            guard !seen[row][col] && board[row][col] == word[wordIndex] else { return false }

            seen[row][col] = true

            let hasValidPath = isValid(row-1,col,wordIndex+1) ||
                                isValid(row+1,col,wordIndex+1) ||
                                isValid(row,col-1,wordIndex+1) ||
                                isValid(row,col+1,wordIndex+1)

            seen[row][col] = false
            return hasValidPath
        }

        for i in 0..<rows {
            for j in 0..<cols {
                if isValid(i,j,0) { return true }
            }
        }

        return false
    }
}

