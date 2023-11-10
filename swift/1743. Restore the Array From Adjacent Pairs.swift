class Solution {
    func restoreArray(_ pairs: [[Int]]) -> [Int] {
        var adjList = [Int: [Int]]()
        var startNode = -1

        for pair in pairs {
            adjList[pair[0], default: []].append(pair[1])
            adjList[pair[1], default: []].append(pair[0])
        }

        for (key,value) in adjList {
            if value.count == 1 {
                startNode = key
                break
            }
        }

        var array = [Int]()
        var visited = Set<Int>()

        func dfs(_ node: Int) {
            array.append(node)
            visited.insert(node)

            if let neighbors = adjList[node] {
                for neighbor in neighbors where !visited.contains(neighbor) {
                    dfs(neighbor)
                }
            }
        }
        
        dfs(startNode)
        return array
    }
}
