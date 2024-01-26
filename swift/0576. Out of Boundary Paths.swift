class Solution {
    func findPaths(_ m: Int, _ n: Int, _ maxMove: Int, _ startRow: Int, _ startColumn: Int) -> Int {
        let mod = 1_000_000_007
        var memo = [[Int]: Int]()
        func dfs(_ row: Int, _ col: Int, _ movesMade: Int) -> Int {
            if row < 0 || row == m || col < 0 || col == n { return 1 }
            if movesMade == maxMove { return 0 }
            if let cache = memo[[row,col,movesMade]] { return cache }
            let up = dfs(row-1,col,movesMade+1)
            let down = dfs(row+1,col,movesMade+1)
            let left = dfs(row,col-1,movesMade+1)
            let right = dfs(row,col+1,movesMade+1)
            let result = (up + down + left + right) % mod
            memo[[row,col,movesMade]] = result
            return result
        }

        return dfs(startRow,startColumn,0)
    }
}
