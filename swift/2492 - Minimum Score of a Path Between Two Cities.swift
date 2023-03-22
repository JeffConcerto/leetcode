class Solution {
    func minScore(_ n: Int, _ roads: [[Int]]) -> Int {
        var adjList = [Int: [(Int, Int)]]()
      
        for road in roads {
            adjList[road[0], default: []].append((road[1], road[2]))
            adjList[road[1], default: []].append((road[0], road[2]))
        }

        var queue = [1]
        var minScore = Int.max
        var didVisit = Array(repeating:false, count: n+1)
        didVisit[1] = true
        while !queue.isEmpty {
            let size = queue.count
            for _ in 0..<size {
                let city = queue.removeFirst()
                if let paths = adjList[city] {
                    for (nextCity, distance) in paths {
                        if !didVisit[nextCity] { 
                            queue.append(nextCity) 
                            didVisit[nextCity] = true
                        }
                        minScore = min(minScore, distance)
                    }
                }
            }
        }

        return minScore
    }
}
