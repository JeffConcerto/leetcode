class Solution {
    func longestCycle(_ edges: [Int]) -> Int {
        var list = [Int:Int]()
        for (index, edge) in edges.enumerated() {
            if edge == -1 { continue }
            list[index] = edge
        }
        
        var visited = Set<Int>()
        var maxCycle = -1

        for i in 0..<edges.count {
            guard !visited.contains(i) && edges[i] != -1 else { continue }

            var seenIndex = [Int:Int]()
            maxCycle = max(maxCycle, dfs(i, &seenIndex, 0))
        }


        func dfs(_ node: Int, _ seenIndex: inout [Int:Int], _ count: Int) -> Int {
            guard seenIndex[node] == nil else { return count - seenIndex[node]! }
            if visited.contains(node) {
                return -1
            } else {
                visited.insert(node)
            }
            seenIndex[node] = count

            if let nextNode = list[node] {
                let newCount = dfs(nextNode, &seenIndex, count+1)
                return newCount
            }

            return -1
        }

        return maxCycle
    }
}
