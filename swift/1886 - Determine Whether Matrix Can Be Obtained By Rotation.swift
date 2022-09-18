class Solution {
    func findRotation(_ mat: [[Int]], _ target: [[Int]]) -> Bool {
        guard mat != target else {return true}
       
        let rows = mat.count
        let cols = mat[0].count

        var rotatedMat = [[Int]]()
        var mat = mat
        var rotations = 0
        
        while rotations < 3 {
            
            for i in 0..<cols {
                var row = [Int]()
                for j in 0..<rows {
                    row.append(mat[rows-1-j][i])
                }
            
                rotatedMat.append(row)
            }
            
            if rotatedMat == target { return true }
            mat = rotatedMat
            rotatedMat.removeAll(keepingCapacity: true)
            rotations += 1
        }
            
        return false
    }
}
