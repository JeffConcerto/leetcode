// Needed help to solve:

class Solution {
    func minTime(_ n: Int, _ edges: [[Int]], _ hasApple: [Bool]) -> Int {
        var map = [Int: [Int]]()

        for edge in edges {
            map[edge[0], default: []].append(edge[1])
            map[edge[1], default: []].append(edge[0])
        }        

        var visited: Set<Int> = []
        var pathLength = 0
        dfs(0, &pathLength, &visited, map, hasApple)
        return pathLength
    }

    private func dfs(_ node: Int, _ pathLength: inout Int, _ visited: inout Set<Int>, _ map: [Int: [Int]], _ hasApple: [Bool]) -> Bool {
            visited.insert(node)
            var hasAppleOrAppleBelow = hasApple[node]

            for neighbor in (map[node] ?? []) {
                guard !visited.contains(neighbor) else { continue }
                
                let currentHasAppleOrAppleBelow = dfs(neighbor, &pathLength, &visited, map, hasApple)

                if currentHasAppleOrAppleBelow {
                    pathLength += 2
                }
                hasAppleOrAppleBelow = hasAppleOrAppleBelow || currentHasAppleOrAppleBelow
            }

            return hasAppleOrAppleBelow
        }
 
    
}
