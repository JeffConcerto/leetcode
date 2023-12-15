class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var adjList = [String: String]()

        for path in paths {
            adjList[path[0]] = path[1]
        }

        func dfs(_ source: String) -> String {
            var result = source
            if let destination = adjList[source] {
                result = dfs(destination)
            }

            return result
        }

        return dfs(paths[0][0])
    }
}
