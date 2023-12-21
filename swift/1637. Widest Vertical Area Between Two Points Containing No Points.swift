class Solution {
    func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
        let points = points.sorted { $0[0] < $1[0] }

        var width = 0

        for i in 1..<points.count {
            width = max(width, points[i][0]-points[i-1][0])
        }

        return width
    }
}
