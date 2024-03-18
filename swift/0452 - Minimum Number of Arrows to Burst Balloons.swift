// - New Solution:
class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        let points = points.sorted { $0[0] <= $1[0] }

        var totalShots = 0
        var start = Int.min
        var end = Int.min

        for point in points {
            let pointStart = point[0]
            let pointEnd = point[1]

            if pointStart <= end {
                start = max(start,pointStart)
                end = min(end, pointEnd)
            } else {
                totalShots += 1
                start = pointStart
                end = pointEnd
            }
        }

        return totalShots == 0 ? 1 : totalShots
    }
}
// Old Solution:
class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        var points = points.sorted { $0[0] < $1[0] }
        print(points)
        var lower = points[0][0]
        var upper = points[0][1]
        var shots = 1
        for i in 1..<points.count {
            if points[i][0] <= upper {
                upper = min(points[i][1], upper)
                continue
            } else {
                lower = points[i][0]
                upper = points[i][1]
                shots += 1
            }
        }

        return shots
    }
}
