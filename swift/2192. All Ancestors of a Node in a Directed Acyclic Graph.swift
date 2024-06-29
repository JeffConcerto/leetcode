class Solution {
    func getAncestors(_ n: Int, _ edges: [[Int]]) -> [[Int]] {
        var adjList = [Int:[Int]]()

        for edge in edges {
            adjList[edge[0], default: []].append(edge[1])
        }

        var answer = Array(repeating: [Int](), count: n)
        var seen = Set<Int>()

        func dfs(_ node: Int, _ ancestor: Int) {
            if seen.contains(node) { return }

            if node != ancestor {
                answer[node].append(ancestor)
            }

            seen.insert(node)

            if let children = adjList[node] {
                for child in children {
                    dfs(child, ancestor)
                }
            }
        }

        for i in 0..<n {
            seen = Set<Int>()
            dfs(i,i)
        }
        return answer
    }
}
