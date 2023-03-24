class Solution {
    func minReorder(_ n: Int, _ connections: [[Int]]) -> Int {
        // The bool will mark if the source points to the destination:
        var adjList = [Int: [(Int, Bool)]]()
        for connection in connections {
            adjList[connection[0], default:[]].append((connection[1], true))
            adjList[connection[1], default:[]].append((connection[0], false))
        }

        
        var queue = [0]
        var adjustments = 0
        var seen = Set<Int>()
        seen.insert(0)

        while !queue.isEmpty {
            let size = queue.count
            for _ in 0..<size {
                let city = queue.removeFirst()

                if let connections = adjList[city] {
                    for (otherCity, isMainRoadTo) in connections {
                        if seen.contains(otherCity) { continue }
                        seen.insert(otherCity)
                        queue.append(otherCity)
                        if isMainRoadTo {
                            adjustments += 1
                        }
                    }
                }
            }
        }

        return adjustments
    }
}
