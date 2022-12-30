class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        guard !intervals.isEmpty else { return [newInterval]}

        var result = [[Int]]()
        var start = newInterval[0]
        var end = newInterval[1]

        for i in 0..<intervals.count {
            // check if newInterval ends before current starts:
            if end < intervals[i][0] {
                // It Does. So add to result and then append rest of intervals to result:
                result.append([start, end])
                result += intervals[i..<intervals.count]
                return result
            } else {
                // New interval does not end before start of current interval.
                // So it may come after, or during.
                // Check for after:
                if start > intervals[i][1] {
                    // New Interval comes after current. Add current to result:
                    result.append(intervals[i])
                } else {
                    // New Interval happens during current.
                    // Combine the two:
                    start = min(start, intervals[i][0])
                    end = max(end, intervals[i][1])
                }
            }
        }

        result.append([start, end])

        return result
    }
}
