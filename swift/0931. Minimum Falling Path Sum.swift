class Solution {
    func minFallingPathSum(_ matrix: [[Int]]) -> Int {
        let n = matrix.count
        var memo = [[Int]:Int]()

        func dfs(_ row: Int, _ col: Int) -> Int {
            if row == n { return 0 }
            if row < 0 || col < 0 || col >= n {
                return 10_000_000_0
            }
            if let cache = memo[[row,col]] { return cache}
            var sum = matrix[row][col]

            let down = dfs(row+1,col)
            let left = dfs(row+1,col-1)
            let right = dfs(row+1,col+1)

            sum += min(down,left,right)
            memo[[row,col]] = sum
            return sum
        }

        var minSum = Int.max
        for i in 0..<n {
            minSum = min(minSum, dfs(0,i))
        }

        return minSum
    }
}
