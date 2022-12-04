// Method 1:
class Solution {
    func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: m)
        var indices = indices
        while !indices.isEmpty {
            let index = indices.removeLast()
            for col in 0..<n {
                matrix[index[0]][col] += 1
            }
            for row in 0..<m {
                matrix[row][index[1]] += 1
            }
        }
        
        var oddCount = 0
        for row in 0..<m {
            for col in 0..<n {
                if matrix[row][col] % 2 == 1 { oddCount += 1}
            }
        }
        
        return oddCount
    }
}

// Method 2:
class Solution {
    func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
        var matrix = Array(repeating: Array(repeating: 0, count: n), count: m)
        var indices = indices
        var oddCount = 0
        
        while !indices.isEmpty {
            let index = indices.removeLast()
            for col in 0..<n {
                matrix[index[0]][col] += 1
                if matrix[index[0]][col] % 2 == 1 { oddCount += 1} else { oddCount -= 1 }
            }
            for row in 0..<m {
                matrix[row][index[1]] += 1
                if matrix[row][index[1]] % 2 == 1 { oddCount += 1} else {oddCount -= 1}
            }
        }
        
        return oddCount
    }
}
