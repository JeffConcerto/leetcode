class Solution {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        let word = Array(word)
        let m = board.count
        let n = board[0].count

        var startingCells = [(Int,Int)]()

        for i in 0..<m {
            for j in 0..<n {
                if board[i][j] == word[0] {
                    startingCells.append((i,j))
                }
            }
        }

        func dfs(_ i: Int, _ j: Int, _ index: Int, _ seen: Set<Int>) -> Bool {
            if index == word.count { return true }
            if i < 0 || i >= m { return false }
            if j < 0 || j >= n { return false }
            if board[i][j] != word[index] { return false }
            let cell = i * n + j
            if seen.contains(cell) { return false }
            var seen = seen
            seen.insert(cell)

            let left = dfs(i,j-1,index+1, seen)
            let right = dfs(i,j+1,index+1, seen)
            let up = dfs(i+1,j,index+1, seen)
            let down = dfs(i-1,j,index+1, seen)

            return left || right || up || down
        }

        for (i,j) in startingCells {
            if dfs(i,j,0,[]) { return true }
        }
        
        return false
    }
}
