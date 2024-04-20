class Solution {
    func findFarmland(_ land: [[Int]]) -> [[Int]] {
        var land = land
        let m = land.count
        let n = land[0].count
        var groups = 0
        for i in 0..<m {
            for j in 0..<n {
                if land[i][j] == 1 { land[i][j] = -1 }
            }
        }

        func dfs(_ row: Int, _ col: Int, _ groupNum: Int) {
            guard row >= 0 && col >= 0 && row < m && col < n else { return }
            guard land[row][col] == -1 else { return }
            land[row][col] = groupNum
            dfs(row+1,col, groups)
            dfs(row-1,col, groups)
            dfs(row,col+1, groups)
            dfs(row,col-1, groups)
        }

        for i in 0..<m {
            for j in 0..<n {
                guard land[i][j] == -1 else { continue }
                groups += 1
                dfs(i,j,groups)
            }
        }

        var result = Array(repeating: Array(repeating: -1, count: 4), count: groups)
        for i in 0..<m {
            for j in 0..<n {
                if land[i][j] != 0 {
                    let group = land[i][j]
                    if result[group-1][0] == -1 && result[group-1][1] == -1 {
                        result[group-1][0] = i
                        result[group-1][1] = j
                    }
                    result[group-1][2] = i
                    result[group-1][3] = j 
                }
            }
        }
        return result
    }
}
