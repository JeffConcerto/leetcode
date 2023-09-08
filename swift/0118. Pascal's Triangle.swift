class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result = [[1]]
        guard numRows > 1 else { return result }

        for _ in 2...numRows {
            var rowResult = [1]

            let row = result.last!
            for i in 1..<row.count {
                rowResult.append(row[i]+row[i-1])
            }
            rowResult.append(1)
            result.append(rowResult)
        }

        return result
    }
}
