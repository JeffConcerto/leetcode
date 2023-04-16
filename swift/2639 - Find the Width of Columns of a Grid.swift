class Solution {
    func findColumnWidth(_ grid: [[Int]]) -> [Int] {
        let m = grid.count
        let n = grid[0].count
        var result = [Int]()

        for col in 0..<n {
            var maxLength = 0
            for row in 0..<m {
                var num = grid[row][col]
                var digits = num < 0 ? 1:0
                num = abs(num)
                if num == 0 { digits = 1 }
                while num > 0 {
                    num /= 10
                    digits += 1
                }
                maxLength = max(maxLength, digits)
            }
            result.append(maxLength)
        }

        return result
    }
}
