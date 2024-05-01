class Solution {
    func canMakeSquare(_ grid: [[Character]]) -> Bool {
        let n =  grid.count
        
        func canMakeSame(_ row: Int, _ col: Int) -> Bool {
            var count = 0
            count += isWhite(row,col)
            count += isWhite(row,col+1)
            count += isWhite(row+1,col)
            count += isWhite(row+1,col+1)
            return count >= 3 || count == 0 || count == 1
        }   

        func isWhite(_ row: Int, _ col: Int) -> Int {
            guard row >= 0 && col >= 0 && row < n && col < n else { return -10 }
            return grid[row][col] == "W" ? 1 : 0
        }

        for row in 0..<n {
            for col in 0..<n {
                if canMakeSame(row,col) { return true }
            }
        }
        return false
    }
}
