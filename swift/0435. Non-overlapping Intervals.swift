class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        let intervals = intervals.sorted { 
            if $0[0] == $1[0] {
                return $0[1] < $1[1]
            } else {
                return $0[0] < $1[0] 
            }
        }

        var start = Int.max
        var end = Int.min
            
        var count = 0

        for interval in intervals {
            // Check if it starts before current end:
            if interval[0] < end {
                // Get shortest end:
                end = min(end, interval[1])
                continue
            }

            start = interval[0]
            end = interval[1]
            count += 1
        }

        return intervals.count - count
    }
}
