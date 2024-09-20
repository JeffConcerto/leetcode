class Solution {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var grid = grid
        let m = grid.count
        let n = grid[0].count
        let directions = [(-1,0), (1,0), (0,-1), (0,1)]
        var q = [(Int,Int)]()
        var fresh = 0

        for i in 0..<m {
            for j in 0..<n {
                if grid[i][j] == 2 {
                    q.append((i,j))
                } else if grid[i][j] == 1 {
                    fresh += 1
                }
            }
        }
        var minutes = -1
        while !q.isEmpty {
            let size = q.count
            for _ in 0..<size {
                let (row,col) = q.removeFirst()
                for (vert, hor) in directions {
                    let r = row + vert
                    let c = col + hor
                    if r < 0 || r == m || c < 0 || c == n { continue }
                    if grid[r][c] == 0 || grid[r][c] == 2 { continue }
                    grid[r][c] = 2
                    fresh -= 1
                    q.append((r,c))
                }
            }
            minutes += 1

        }

        return fresh == 0 ? max(0,minutes) : -1
    }
}
