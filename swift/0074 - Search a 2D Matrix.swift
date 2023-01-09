class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let m = matrix.count
        let n = matrix[0].count

        var low = 0
        var high = m * n

        while low <= high {
            let middle = (low + high) / 2
            let row = middle / n
            let col = middle % n
            guard row >= 0 && row < m else { return false }
            guard col >= 0 && col < n else { return false }
            guard matrix[row][col] != target else { return true }

            if target < matrix[row][col] {
                high = middle - 1
            } else {
                low = middle + 1
            }
        }

        return false
    }
}
