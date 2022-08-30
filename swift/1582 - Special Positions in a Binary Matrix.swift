class Solution {
    func numSpecial(_ mat: [[Int]]) -> Int {
        let rows = mat.count
        let cols = mat[0].count
        
        var specialCount = 0
        
        for y in 0..<rows {
            if mat[y].filter { $0 == 1}.count == 1 {
                for x in 0..<cols {
                    if mat[y][x] == 1 { 
                        var oneCount = 0
                        for row in 0..<rows {
                            if mat[row][x] == 1 { oneCount += 1}
                        }
                        if oneCount == 1 { specialCount += 1 }
                    }
                }
            }
        }
        
        return specialCount
    }
}
