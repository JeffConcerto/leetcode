// Needed help to solve:
class Solution {
     let direction = [(-1,0), (1,0), (0, -1), (0,1)]
    func maxDistance(_ grid: [[Int]]) -> Int {
        // A matrix to mark visited cells
        var visited = grid

        var queue = [(Int,Int)]()

        // Iterate over the grid and insert all land cells into the queue:
        for i in 0..<grid.count {
            for j in 0..<grid.count {
                if grid[i][j] == 1 {
                    queue.append((i,j))
                }
            }
        }

        var maxDistance = -1

        while !queue.isEmpty {
            var queueSize = queue.count
            while queueSize > 0 {
                let landCell = queue.removeFirst()

                for dir in direction {
                    let row = landCell.0 + dir.0
                    let col = landCell.1 + dir.1
                    if isWaterCell(row, col, grid) && visited[row][col] == 0 { 
                        visited[row][col] = 1
                        queue.append((row,col)) 
                    } 
                }
                queueSize -= 1
            }
            maxDistance += 1
        }

        return maxDistance == 0 ? -1 : maxDistance

    }

    private func isWaterCell(_ row: Int, _ col: Int, _ grid: [[Int]]) -> Bool {
        guard row >= 0 && row < grid.count && col >= 0 && col < grid.count else { return false }
        return grid[row][col] == 0
    }
}
