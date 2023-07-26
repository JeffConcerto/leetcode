class Solution {
    func minSpeedOnTime(_ dist: [Int], _ hour: Double) -> Int {
        let miles = dist.reduce(0,+)
        var low = 1
        var high = 10_000_000
        var minTime = 10_000_001

        while low <= high {
            let middle = low + (high-low)/2

            if willArrive(middle) {
                minTime = min(minTime, middle)
                high = middle-1
            } else {
                low = middle+1
            }
        }

        func willArrive(_ mph: Int)-> Bool {
            var totalHours = 0.0
            for i in 0..<dist.count-1 {
                totalHours += ceil(Double(dist[i])/Double(mph))
                if Double(totalHours) > hour { return false}
            }

            totalHours += Double(dist.last!)/Double(mph)
            return totalHours <= hour
        }


        return minTime == 10_000_001 ? -1 : minTime
    }

    
}
