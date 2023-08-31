class Solution {
    func minTaps(_ n: Int, _ ranges: [Int]) -> Int {
        var rangeMap = [[Int]]()
        for (i, range) in ranges.enumerated() {
            let start = max(i-range,0)
            let end = min(n, i+range)
            rangeMap.append([start,end])
        }

        // Sort by end:
        rangeMap = rangeMap.sorted { $0[0] < $1[0] }
        if rangeMap[0][0] != 0 { return -1 }

        // Find connected taps:
        var rangeStart = 0
        var rangeEnd = 0
        var count = 0
      
        for i in 0..<rangeMap.count {
            var tempStart = rangeStart
            var tempEnd = rangeEnd
            
            for j in i..<rangeMap.count {
                let start = rangeMap[j][0]
                let end = rangeMap[j][1]
                if start == end { continue }

                if start <= rangeEnd {
                    tempEnd = max(tempEnd, end)
                }

            }

            count += 1
            rangeStart = tempStart
            rangeEnd = tempEnd
            if rangeEnd == n { break }
        }

        return rangeStart == 0 && rangeEnd == n ? count : -1        
    }
}
