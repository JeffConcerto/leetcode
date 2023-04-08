class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        let m = image.count
        let n = image[0].count
        var image = image
        let sourceColor = image[sr][sc]
        var seen = image

       func dfs(_ row: Int, _ col: Int) {
            guard row >= 0, row < m, col >= 0, col < n else { return }
            guard image[row][col] == sourceColor, seen[row][col] != -1 else { return }

            image[row][col] = color
            seen[row][col] = -1

            dfs(row+1,col)
            dfs(row-1,col)
            dfs(row,col+1)
            dfs(row,col-1)
        }

        dfs(sr,sc)
        
        return image
    }
}
