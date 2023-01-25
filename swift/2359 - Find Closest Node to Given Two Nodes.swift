class Solution {
    func closestMeetingNode(_ edges: [Int], _ node1: Int, _ node2: Int) -> Int {
        guard node1 != node2 else { return node1 }
        var adjacencyList = [Int: Int]()

        for i in 0..<edges.count {
            guard edges[i] != -1 else { continue }
            adjacencyList[i] = edges[i]
        }

        var node1Map = [Int: Int]()
        var node2Map = [Int: Int]()

        func dfs1(_ node: Int, _ distance: Int) {
            guard adjacencyList[node] != nil else { 
                node1Map[node] = distance
                return
            }

            if node1Map[node] == nil {
                node1Map[node] = distance
            } else {
                return
            }
            dfs1(adjacencyList[node]!, distance + 1)
        }

        func dfs2(_ node: Int, _ distance: Int) {
            guard adjacencyList[node] != nil else {             
                node2Map[node] = distance
                return 
            }
            if node2Map[node] == nil {
                node2Map[node] = distance
            } else {
                return
            }
            dfs2(adjacencyList[node]!, distance + 1)
        }

        dfs1(node1, 0)
        dfs2(node2, 0)

        var minDistance = Int.max
        var minNode = Int.max
        
        for (key, value) in node1Map {
            guard let node2Value = node2Map[key] else { continue } 
            let distance = max(value, node2Value)
            if distance <= minDistance {
                if distance == minDistance {
                    minNode = min(key, minNode)
                } else {
                    minDistance = distance
                    minNode = key
                }
            }
        }

        return minNode == Int.max ? -1 : minNode
    }
}
