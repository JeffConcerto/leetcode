class Solution {
    func findMissingAndRepeatedValues(_ grid: [[Int]]) -> [Int] {
        let n = grid.count
        var arr = Array(repeating: 0, count: n * n + 1)
        var sum = 0
        var dupe = -1
        for row in 0..<n {
            for col in 0..<n {
                let num = grid[row][col]
                sum += num
                arr[num] += 1
                if arr[num] == 2 {
                    dupe = num
                }
            }
        }

        let maxSum = (n*n) * (n*n+1) / 2
        return [dupe, maxSum - (sum-dupe)]
    }
}
