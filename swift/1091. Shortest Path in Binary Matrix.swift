class Solution {
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
        let n = grid.count

        func bfs() -> Int {
            var queue = [[0,0]]
            var visited = Set<[Int]>()
            var length = 1
           while !queue.isEmpty {
               let size = queue.count
               for _ in 0..<size {
                   let point = queue.removeFirst()
                   let row = point[0]
                   let col = point[1]
                   guard row >= 0 && row < n && col >= 0 && col < n else { continue }
                   guard grid[row][col] != 1 else { continue }
                   guard (row,col) != (n-1,n-1) else { return length }
                   let otherPositions = [
                       [row+1, col],
                       [row-1,col],
                       [row,col+1],
                       [row,col-1],
                       [row+1,col+1],
                       [row-1,col-1],
                       [row-1,col+1],
                       [row+1,col-1],
                   ]

                   for position in otherPositions {
                       guard !visited.contains(position) else { continue }
                       visited.insert(position)
                       queue.append(position)
                   }
               }
               length += 1
           }
           return -1 
        }

        return bfs()
    }
}
