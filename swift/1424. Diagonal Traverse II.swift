// BFS:
class Solution {
    func findDiagonalOrder(_ nums: [[Int]]) -> [Int] {
        var queue = [(row: Int, col: Int)]()
        queue.append((row:0, col:0))
        var result = [Int]()
        while !queue.isEmpty {
                let (row, col) = queue.removeFirst()
                result.append(nums[row][col])

                // Check if start of diagonal:
                if col == 0, row + 1 < nums.count {
                    queue.append((row+1,col))
                }
                if col+1 < nums[row].count {
                    queue.append((row,col+1))
                }
        }

        return result
    }
}

// HASH Count:
class Solution {
    func findDiagonalOrder(_ nums: [[Int]]) -> [Int] {
        var map = [Int: [Int]]()

        for i in stride(from: nums.count-1, to: -1, by: -1) {
            for j in stride(from: nums[i].count-1, to: -1, by: -1) {
                map[i+j, default: []].append(nums[i][j])
            }
        }

        var i = 0
        var result = [Int]()

        while map[i] != nil {
            if let array = map[i] {
                result += array
            }
            i += 1
        }

        return result
    }
}
