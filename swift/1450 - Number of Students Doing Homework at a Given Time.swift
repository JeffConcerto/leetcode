class Solution {
    func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var studentCount = 0
        
        for index in 0..<startTime.count {
            if startTime[index] <= queryTime && endTime[index] >= queryTime {
                studentCount += 1
            }
        }
        
        return studentCount
    }
}
