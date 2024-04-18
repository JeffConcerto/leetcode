class Solution {
    func minRectanglesToCoverPoints(_ points: [[Int]], _ w: Int) -> Int {
        let points = points.sorted { $0[0] < $1[0] }
        var total = 1
        var left = 0
        for right in 0..<points.count {
            let point = points[right]
            let x = point[0]
            let previousPoint = points[left]
            let xp = previousPoint[0]
           if abs(x-xp) > w {
                left = right
                total += 1 
           }
        }
        return total
    }
}
