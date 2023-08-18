class Solution {
    func maximalNetworkRank(_ n: Int, _ roads: [[Int]]) -> Int {
        guard !roads.isEmpty else { return 0 }
        var adjMap = [Int: [Int]]()

        // Build adjacency map:
        for road in roads {
            adjMap[road[0], default: []].append(road[1])
            adjMap[road[1], default: []].append(road[0])
        }
        var maxRoads = 0
        for i in 0..<n {
            for j in i+1..<n {
             var localRoads = (adjMap[i]?.count ?? 0) + (adjMap[j]?.count ?? 0)
             if (adjMap[i]?.contains(j) ?? false) { localRoads -= 1 }
             maxRoads = max(maxRoads, localRoads)
            }
        }

        return maxRoads
    }
}
