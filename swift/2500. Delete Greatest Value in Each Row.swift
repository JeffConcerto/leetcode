class Solution {
    func deleteGreatestValue(_ grid: [[Int]]) -> Int {
        var grid = grid
        var sum = 0

        while !grid[grid.count-1].isEmpty {
            var maxRemovedFromGrid = Int.min

            for i in 0..<grid.count {
                var maxElement = Int.min
                var maxIndex = 0
                for j in 0..<grid[i].count {
                    if grid[i][j] > maxElement {
                        maxElement = grid[i][j]
                        maxIndex = j
                    }
                }
                maxRemovedFromGrid = max(maxRemovedFromGrid, maxElement)
                grid[i].remove(at: maxIndex)
            }
            sum += maxRemovedFromGrid
        }

        return sum
    }
}
