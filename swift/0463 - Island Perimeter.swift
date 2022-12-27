class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var perimeter = 0

        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                perimeter += countPerimeterFor(i, j, in: grid)
            }
        }

        return perimeter
    }

    private func countPerimeterFor(_ row: Int, _ col: Int , in grid: [[Int]]) -> Int {
        guard grid[row][col] == 1 else { return 0 }
        var count = 0
        // Check above:
        if row == 0 {
            count += 1
        } else if grid[row-1][col] == 0 {
            count += 1
        }

        // Check below:
        if row == grid.count-1 {
            count += 1
        } else if grid[row+1][col] == 0 {
            count += 1
        }

        // Check Left:
        if col == 0 {
            count += 1 
        } else if grid[row][col-1] == 0 {
            count += 1
        }

        // Check Right:
        if col == grid[0].count-1 {
            count += 1
        } else if grid[row][col+1] == 0 {
            count += 1
        }

        return count
    }
}
