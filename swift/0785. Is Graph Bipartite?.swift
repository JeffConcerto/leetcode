class Solution {
    func isBipartite(_ graph: [[Int]]) -> Bool {
        let all = Set(0..<graph.count)
        var a = all
        var queue = [0]
        var visited = Array(repeating: false, count: graph.count)
        visited[0] = true
       
        while !queue.isEmpty {
            let size = queue.count 

            for _ in 0..<size {
                let node = queue.removeFirst()
                if a.contains(node) {
                    for edge in graph[node] {
                        if a.contains(edge) {
                            if !visited[edge] {
                                queue.append(edge)
                                visited[edge] = true
                            } 
                            a.remove(edge)
                    } 
                }
                } else {
                    for edge in graph[node] {
                        if !a.contains(edge) {
                            return false
                        }
                        if !visited[edge] {
                                queue.append(edge)
                                visited[edge] = true
                        }
                    }
                }
            }

            if queue.isEmpty {
                for (i, didVisit) in visited.enumerated() {
                    if !didVisit {
                        queue.append(i)
                        visited[i] = true
                        break
                    }
                }
            }
        }

        

        return true
    }
}
