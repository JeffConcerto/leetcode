class Solution {
    func imageSmoother(_ img: [[Int]]) -> [[Int]] {
        let m = img.count
        let n = img[0].count
        var result = img

        for row in 0..<m {
            for col in 0..<n {
                var sum = 0
                var count = 0
                for i in row-1...row+1 {
                    if i < 0 || i >= m { continue }
                    for j in col-1...col+1 {
                        if j < 0 || j >= n { continue }
                        sum += img[i][j]
                        count += 1
                    }
                }
                result[row][col] = sum / count
            }
        }

        return result
    }
}
