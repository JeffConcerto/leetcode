class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var count = 0

        for i in 0..<m {
            var low = 0
            var high = n-1
            while low <= high {
                let middle = low + (high-low)/2
                if grid[i][middle] < 0 {
                    high = middle-1
                } else {
                    low = middle+1
                }
            }
            count += (n-low)
        }

        return count
    }
}
