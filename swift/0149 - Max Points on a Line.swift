// Needed help:
class Solution {
    func maxPoints(_ points: [[Int]]) -> Int {
        guard points.count > 1 else { return 1 }

        var maxCount = 0

        for i in 0..<points.count {
            var hashCount = [Double: Int]()

            for j in i+1..<points.count {
                let slope = getSlope(points[i], points[j])
                hashCount[slope, default: 0] += 1
                maxCount = max(maxCount, hashCount[slope]!)
            }
        }

        return maxCount + 1
    }

    private func getSlope(_ point1: [Int], _ point2: [Int]) -> Double {
        let x1 = point1[0], y1 = point1[1]
        let x2 = point2[0], y2 = point2[1]

        guard x1 != x2 else { return Double.infinity }
        guard y1 != y2 else { return 0 }

        let y = Double(y2-y1)
        let x = Double(x2-x1)
        return y/x
    }
}
