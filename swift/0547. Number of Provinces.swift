class Solution {
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        let n = isConnected.count
        var adjList = [Int: [Int]]()

        for i in 0..<n {
            for j in 0..<n {
                guard i != j && isConnected[i][j] == 1 else { continue }
                adjList[i, default: []].append(j)
            }
        }

        var visited = Set<Int>()

         func dfs(_ i: Int) {
            guard !visited.contains(i) else { return }
            visited.insert(i)

            guard let neighbors = adjList[i] else { return }

            for neighbors in neighbors {
                dfs(neighbors)
            }
        }
        var provinces = 0
        for i in 0..<n {
            guard !visited.contains(i) else { continue }
            dfs(i)
            provinces += 1
        }

        return provinces
    }
}
