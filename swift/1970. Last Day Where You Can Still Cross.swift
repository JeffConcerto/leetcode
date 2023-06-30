class Solution {
    func latestDayToCross(_ rows: Int, _ cols: Int, _ cells: [[Int]]) -> Int {
        // create map:
        var grid = Array(repeating: Array(repeating: 0, count: cols), count: rows)

        func bfs() -> Bool {
            var queue = [[Int]]()
            var visited = Set<[Int]>()

            for i in 0..<cols {
                queue.append([0,i])
                visited.insert([0,i])
            }

            while !queue.isEmpty {
                let size = queue.count
                for _ in 0..<size {
                    let location = queue.removeFirst()
                    let row = location[0]
                    let col = location[1]
                    guard row >= 0 && row < rows && col >= 0 && col < cols else { continue }
                    if grid[row][col] == 1 { continue }
                    if row == rows-1 { return true }
                    if !visited.contains([row+1,col]) {
                        queue.append([row+1,col])
                        visited.insert([row+1,col])
                    }
                    if !visited.contains([row-1,col]) {
                        queue.append([row-1,col])
                        visited.insert([row-1,col])
                    }
                    if !visited.contains([row,col+1]) {
                        queue.append([row,col+1])
                        visited.insert([row,col+1])
                    }
                    if !visited.contains([row,col-1]) {
                        queue.append([row,col-1])
                        visited.insert([row,col-1])
                    }
                }
            }
            return false
        }

       

        func canCross(_ day: Int) -> Bool {
            grid = Array(repeating: Array(repeating: 0, count: cols), count: rows)
            for i in 0..<day {
                let row = cells[i][0]-1
                let col = cells[i][1]-1
                grid[row][col] = 1
            }
            
            return bfs()
        }

        var low = 0
        var high = cells.count-1

        while low <= high {
            let middle = low + (high-low)/2
            if canCross(middle) {
                low = middle+1
            } else {
                high = middle-1
            }
        }
        return low-1
    }
}
