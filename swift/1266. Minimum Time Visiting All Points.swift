class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var time = 0

        for i in 1..<points.count {
            let x1 = points[i-1][0]
            let x2 = points[i][0]
            let y1 = points[i-1][1]
            let y2 = points[i][1]

            time += max(abs(x2-x1), abs(y2-y1))
        }
        
        return time
    }
}
