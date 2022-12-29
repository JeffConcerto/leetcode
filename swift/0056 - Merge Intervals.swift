class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var intervals = intervals.sorted { $0[0] <= $1[0]}
        var result = [[Int]]()

        var previousInterval = intervals[0]

        for i in 1..<intervals.count {
            // Check if the upperbound of the previous interval is greater than the lowerbound of current:
            if previousInterval[1] >= intervals[i][0] && intervals[i][1] >= previousInterval[0] {
                // interval starts before previous ends. Merge them:
                // Check if current lowerbound is lower than previous lowerbound:
                let lowerbound = previousInterval[0] <= intervals[i][0] ? previousInterval[0] : intervals[i][0]
                let upperbound = intervals[i][1] >= previousInterval[1] ? intervals[i][1] : previousInterval[1]
                let merge = [lowerbound, upperbound]
                previousInterval = merge
            } else {
                // Don't merge.
                // Add previousInterval to result,
                // Set previousInterval to current:
                result.append(previousInterval)
                previousInterval = intervals[i]
            }
        }

        result.append(previousInterval)

        return result
    }
}
