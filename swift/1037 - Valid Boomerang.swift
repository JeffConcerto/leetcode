// Needed help to solve:
class Solution {
    func isBoomerang(_ points: [[Int]]) -> Bool {
        let x1 = points[0][0]
        let x2 = points[1][0]
        let x3 = points[2][0]
        
        let y1 = points[0][1]
        let y2 = points[1][1]
        let y3 = points[2][1]
        
        let a = (x1 - x2) * (y1 - y3)
        let b = (x1 - x3) * (y1 - y2)
        
        return a != b
    }
}
