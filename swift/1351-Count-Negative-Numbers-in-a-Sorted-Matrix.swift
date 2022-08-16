// Method 1
class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var negativeCount = 0
        
        for row in grid {
            for value in row where value < 0 {
                negativeCount += 1
            }
        }
        
        return negativeCount   
    }
}


// Method 2

class Solution {
    func countNegatives(_ grid: [[Int]]) -> Int {
        var negativeCount = 0
        
        for row in grid {
            for i in stride(from: row.count - 1, through: 0, by: -1) {
                if row[i] >= 0 { break }
                negativeCount += 1
            }
        }
        
        return negativeCount   
    }
}
