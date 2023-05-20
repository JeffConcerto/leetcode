class Solution {
    func calcEquation(_ equations: [[String]], _ values: [Double], _ queries: [[String]]) -> [Double] {
        var adjList = [String:[(node: String, value: Double)]]()

        for i in 0..<equations.count {
            adjList[equations[i][0], default:[]].append((node: equations[i][1], value: values[i]))
            adjList[equations[i][1], default:[]].append((node: equations[i][0], value: 1/values[i]))
        }

        var result = [Double]()
        var visited = [String: Bool]()

        for query in queries {
            let start = query[0]
            let finish = query[1]
            visited = [:]
            let answer = dfs(start, finish)
            if answer == 0 { result.append(-1.0); continue }
           result.append(answer)
        }

        func dfs(_ start: String, _ finish: String) -> Double {
            print(start,finish)
            guard adjList[start] != nil && adjList[finish] != nil else { return 0 }
            if start == finish { return 1 }
            visited[start] = true

            var current = 0.0
            for edge in adjList[start]! {
                if visited[edge.node] != nil { continue }
                    current = max( edge.value * dfs(edge.node, finish), current)
            }

            
            return current
        }

        return result
    }
}
