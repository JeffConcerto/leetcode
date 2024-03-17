// - Updated Solution:
class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var i = 0
        var hasAdddedNewInterval = false
        var result = [[Int]]()

        while i < intervals.count {
            let currentStart = intervals[i][0]
            let currentEnd = intervals[i][0]
            
            // - If newInterval starts before current, Insert:
            if !hasAdddedNewInterval && newInterval[0] < currentStart {
               addToResult(&result, newInterval[0], newInterval[1])
               hasAdddedNewInterval = true
            } else {
                addToResult(&result, intervals[i][0], intervals[i][1])
                i += 1
            }  
        }
        if !hasAdddedNewInterval {
            addToResult(&result, newInterval[0], newInterval[1])
        }
        return result
    }

    private func addToResult(_ result: inout [[Int]], _ start: Int, _ end: Int) {
        guard !result.isEmpty else {
            result.append([start,end])
            return 
        }

        let currentStart = result.last![0]
        let currentEnd = result.last![1]

        // - Check for Merge:
        if start <= currentEnd {
            result[result.count-1][0] = min(start, currentStart)
            result[result.count-1][1] = max(end, currentEnd)
        } else {
            // - No merge:
            result.append([start,end])
        }
    }
}

// - Old Solution:
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
