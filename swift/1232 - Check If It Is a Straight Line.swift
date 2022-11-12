class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        
        let x1 = coordinates[0][0]
        let x2 = coordinates[1][0]
        
        let y1 = coordinates[0][1]
        let y2 = coordinates[1][1]
        
        for index in 2..<coordinates.count {
            let x3 = coordinates[index][0]
            let y3 = coordinates[index][1]
            
            let a = (x1-x2) * (y1-y3)
            let b = (x1-x3) * (y1-y2)
            
            if a != b { return false}
   
        }
        
        return true
    }
}
