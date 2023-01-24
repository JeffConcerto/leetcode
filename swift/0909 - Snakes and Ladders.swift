class Solution {
    func snakesAndLadders(_ board: [[Int]]) -> Int {
        let board = get1DArray(of: board)
        var visited = Set<Int>()
        var rolls = Set<Int>()

        var queue = [1]
        var moves = 0
        var movesToNextLevel = 1

        while !queue.isEmpty {
            movesToNextLevel -= 1
            
            let square = queue.removeFirst()

            for roll in 1...6 {
                guard !rolls.contains(square+roll) else { continue }
                rolls.insert(square+roll)
                let nextSquare: Int
                if board[square-1+roll] != -1 {
                    nextSquare = board[square-1+roll]
                } else {
                    nextSquare = roll + square
                }
                guard nextSquare != board.count else { return moves + 1}
                guard !visited.contains(nextSquare) else { continue }
                queue.append(nextSquare)
                visited.insert(square)
            }

            if movesToNextLevel == 0 {
                moves += 1
                movesToNextLevel = queue.count
            }
        }


       return -1
    }

    private func get1DArray(of board: [[Int]]) -> [Int] {
        let n = board.count
        var oneDimensionalBoard = Array(repeating: 0, count: n * n)

        for row in 0..<n {
            if row % 2 == 0 {
                for col in 0..<n {
                    oneDimensionalBoard[row * n + col] = board[n-1-row][col]
                }
            } else {
                for col in 0..<n {
                    oneDimensionalBoard[row * n + col] = board[n-1-row][n-1-col]
                }
            }
        }

        return oneDimensionalBoard
    }
}
