class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var lastRow = [1]

        for _ in 0..<rowIndex {
            var currentRow = lastRow

            for i in 1..<lastRow.count {
                currentRow[i] = lastRow[i] + lastRow[i-1]
            }

            currentRow.append(1)
            lastRow = currentRow
        }

        return lastRow
    }
}
