class Solution {
    func shortestBridge(_ grid: [[Int]]) -> Int {
        // Find start of one island:
        var islandStart = [0,0]
        var foundIsland = false
        for i in 0..<grid.count {
            for j in 0..<grid.count {
                if grid[i][j] == 1 {
                    islandStart = [i,j]
                    foundIsland = true
                    break 
                }
                if foundIsland { break }
            }
        }

          // Find all positions of one island:
        var islandPositions = [[Int]]()
        var visited = Set<[Int]>()

        func dfs(_ row: Int, _ col: Int) {
            guard row >= 0 && row < grid.count && col >= 0 && col < grid.count && grid[row][col] != 0 
                && !visited.contains([row,col]) else { return }
            islandPositions.append([row,col])
            visited.insert([row,col])
            dfs(row+1,col)
            dfs(row,col+1)
            dfs(row-1,col)
            dfs(row,col-1)
        }

        dfs(islandStart[0], islandStart[1])

        // Find distance to next island:
        visited = Set(islandPositions)

        func bfs() -> Int {
            var minDistance = 0
            var queue = islandPositions

            while !queue.isEmpty {
                let size = queue.count
                for _ in 0..<size {
                    let startPos = queue.removeFirst()
                    let row = startPos[0]
                    let col = startPos[1]
                    let newPositions = [
                        [row, col+1],
                        [row+1,col],
                        [row,col-1],
                        [row-1, col]
                    ] 
                    for position in newPositions where !visited.contains(position) {
                        let row = position[0]
                        let col = position[1]
                        guard row >= 0 && row < grid.count && col >= 0 && col < grid.count else { continue }
                        if grid[position[0]][position[1]] == 1 { return minDistance}
                        queue.append(position)
                        visited.insert(position)
                    }
                }
                minDistance += 1
            }

            return minDistance
        }

        return bfs()  
    }
}


