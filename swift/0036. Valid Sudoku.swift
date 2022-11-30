class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
      return isValidRows(board) && isValidCols(board) && isValid3x3(board)
    }
    
    private func isValidRows(_ board: [[Character]]) -> Bool {
        for row in board {
            var set: Set<Character> = []
            for char in row where char != "." {
                guard !set.contains(char) else { print(char); return false }
                set.insert(char)
            }
        }
        return true
    }
    
    private func isValidCols(_ board: [[Character]]) -> Bool {
        for col in 0..<board[0].count {
            var set: Set<Character> = []
            
            for row in 0..<board.count {
                guard board[row][col] != "." else { continue }
                guard !set.contains(board[row][col]) else { return false }
                set.insert(board[row][col])
            }
        }        

        return true
    }
    
    private func isValid3x3(_ board: [[Character]]) -> Bool {
        for i in 0...8 {
            let j = i / 3 * 3
            let k = (i % 3) * 3
            var set: Set<Character> = []
          
            for row in j..<j+3 {
                for col in k..<k+3 {
                     guard board[row][col] != "." else { continue }
                    guard !set.contains(board[row][col]) else { return false }
                    set.insert(board[row][col])
                }
            }
        }
        
        return true
    }
}
