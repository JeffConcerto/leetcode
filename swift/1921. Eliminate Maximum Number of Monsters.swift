class Solution {
    func eliminateMaximum(_ dist: [Int], _ speed: [Int]) -> Int {
        var times = [Int]()
        for i in 0..<dist.count {
            let time = dist[i] / speed[i] + (dist[i] % speed[i] > 0 ? 1 : 0)
            times.append(time)
        }
        times.sort()
        
        var timeUsed = 0
            
        for time in times {
            if timeUsed >= time { break }
            timeUsed += 1
        }

        return timeUsed
    }
}
