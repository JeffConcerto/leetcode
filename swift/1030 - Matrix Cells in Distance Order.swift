class Solution {
    func allCellsDistOrder(_ rows: Int, _ cols: Int, _ rCenter: Int, _ cCenter: Int) -> [[Int]] {
        var hash = [[Int]: Int]()
        var matrix = Array(repeating: Array(repeating: 0, count: cols), count: rows)
        
        for i in 0..<rows {
            for j in 0..<cols {
                hash[[i,j]] = abs(rCenter - i) + abs(cCenter - j)
            }
        }
        
        let sortedHash = hash.sorted { $0.value < $1.value }
        
        var result = [[Int]]()
        for (array, _) in sortedHash {
            result.append(array)
        }
        
        return result
    }
}
