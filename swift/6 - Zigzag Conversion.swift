// Needed help to solve

class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 { return s }
        
        var rows: [String] = Array(repeating: "", count: min(numRows, s.count))
        
        var currentRow = 0
        var isGoingDown = false
        
        for character in s {
            rows[currentRow].append(character)
            
            if currentRow == 0 || currentRow == numRows - 1 {
                isGoingDown = !isGoingDown
            }
            
            currentRow += isGoingDown ? 1 : -1
        }
        
        var result = ""
        
        for row in rows {
            result.append(row)
        }
        
        return result
    }
}
