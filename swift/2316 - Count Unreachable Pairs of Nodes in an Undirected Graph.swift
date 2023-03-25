class Solution {
    func countPairs(_ n: Int, _ edges: [[Int]]) -> Int {
        var adjList = [Int:[Int]]()

        for edge in edges{
            adjList[edge[0], default:[]].append(edge[1])
            adjList[edge[1], default:[]].append(edge[0])
        }

        var seen = Set<Int>()    
        var total = 0
        var liveNodes = n

        for i in 0..<n {
            guard !seen.contains(i) else { continue }
            let count = dfs(i)
             total += count * (liveNodes-count)
            liveNodes -= count
        }

        func dfs(_ node: Int) -> Int {
            seen.insert(node)
            var count = 1

            if let neighbors = adjList[node] {
                for neighbor in neighbors {
                    if seen.contains(neighbor) { continue }
                    count += dfs(neighbor)
                }
            }
            return count
        }

        return total
    }
}
