class NeighborSum {
    private var grid: [[Int]]
    private let n: Int
    private var map = [Int:Int]()
    init(_ grid: [[Int]]) {
        self.grid = grid
        self.n = grid.count
        for row in 0..<n {
            for col in 0..<n {
                map[grid[row][col]] = row * n + col
            }
        }
    }
    
    func adjacentSum(_ value: Int) -> Int {
        let location = map[value]!
        let row = location / n
        let col = location % n
        print(row,col)
        let above = row > 0 ? grid[row-1][col] : 0
        let below = row+1 < n ? grid[row+1][col] : 0
        let left = col > 0 ? grid[row][col-1] : 0
        let right = col+1 < n ? grid[row][col+1] : 0

        return above + below + left + right
    }
    
    func diagonalSum(_ value: Int) -> Int {
        let location = map[value]!
        let row = location / n
        let col = location % n

        let topLeft = row > 0 && col > 0 ? grid[row-1][col-1] : 0
        let topRight = row > 0 && col+1 < n ? grid[row-1][col+1] : 0
        let bottomLeft = row+1 < n && col > 0 ? grid[row+1][col-1] : 0
        let bottomRight = row+1 < n && col+1 < n ? grid[row+1][col+1] : 0

        return topLeft + topRight + bottomLeft + bottomRight
    }
}

/**
 * Your NeighborSum object will be instantiated and called as such:
 * let obj = NeighborSum(grid)
 * let ret_1: Int = obj.adjacentSum(value)
 * let ret_2: Int = obj.diagonalSum(value)
 */
