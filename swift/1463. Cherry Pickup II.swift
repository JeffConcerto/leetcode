class Solution {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        /* Moves Allowed: 
         - Down = row+1, col
         - Down Left = row+1, col-1
         - Down Right = row+1, col+1
        */

        var memo = [[Int]:Int]()

        func dfs(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
            if row1 < 0 || row1 >= m || col1 < 0 || col1 >= n ||
                row2 < 0 || row2 >= m || col2 < 0 || col2 >= n {
                    return -10_000
            }

            if let cache = memo[[row1,col1,row2,col2]] { return cache }
            
            // - Collect cherries from the cells:
            var collectedCherries = grid[row1][col1] + grid[row2][col2]
            
            // - Check if the robots occupy the same cell:
            if row1 == row2 && col1 == col2 {
                // - Remove duplicate cherries collected from cell:
                collectedCherries -= grid[row1][col1]
            }

            if row1 == m-1 {
                return collectedCherries
            }

            // Move Each Robot one of three ways for a total of :
            let downDown = dfs(row1+1,col1, row2+1, col2)
            let downDownLeft = dfs(row1+1,col1, row2+1, col2-1)
            let downDownRight = dfs(row1+1,col1, row2+1, col2+1)
            let downLeftDown = dfs(row1+1,col1-1, row2+1, col2)
            let downLeftDownRight = dfs(row1+1,col1-1, row2+1, col2+1)
            let downLeftDownLeft = dfs(row1+1,col1-1, row2+1, col2-1)
            let downRightDown = dfs(row1+1,col1+1, row2+1, col2)
            let downRightDownRight = dfs(row1+1,col1+1, row2+1, col2+1)
            let downRightDownLeft = dfs(row1+1,col1+1, row2+1, col2-1)

            let result = collectedCherries + max(downDown, downDownLeft, downDownRight,
            downLeftDown, downLeftDownRight, downLeftDownLeft,
            downRightDown, downRightDownRight, downRightDownLeft
            )
            memo[[row1,col1,row2,col2]] = result
            return result
            
        }
        return dfs(0,0,0,n-1)
    }
}
