class Solution {
    func findChampion(_ grid: [[Int]]) -> Int {
        let n = grid.count
        for team in 0..<n {
            var doesLose = false
            for other in 0..<n {
                if other == team { continue }
                if grid[team][other] == 0 {
                    doesLose = true
                    break
                }
            }
            if !doesLose { return team }
        }

        return -1
    }
}
