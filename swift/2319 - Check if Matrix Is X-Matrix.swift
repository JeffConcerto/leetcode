class Solution {
    func checkXMatrix(_ grid: [[Int]]) -> Bool {
        var grid = grid 
        let n = grid.count - 1
        
        for i in 0..<grid.count {
            if grid[i][i] == 0 { return false }
            grid[i][i] = -1

            if grid[i][n-i] == 0 { return false }
            grid[i][n-i] = -1
        }
        
        print(grid)
                
        for row in 0..<grid.count {
            for col in 0..<grid.count {
               if grid[row][col] != 0 && grid[row][col] != -1 { return false}
            }
        }
        
        return true
    }
}
