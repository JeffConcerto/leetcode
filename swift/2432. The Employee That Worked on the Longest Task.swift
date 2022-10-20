class Solution {
    func hardestWorker(_ n: Int, _ logs: [[Int]]) -> Int {
        var maxTime = Int.min
        var maxId = -1
        var lastTime = 0
        for i in 0..<logs.count {
            let time = logs[i][1] - lastTime
            if time > maxTime {
                maxTime = time
                maxId = logs[i][0]
            } else if time == maxTime {
                maxId = min(maxId, logs[i][0])
            }
            lastTime = logs[i][1]
        }
        
        return maxId
    }
}
