class Solution {
    func eventualSafeNodes(_ graph: [[Int]]) -> [Int] {
        var result = [Int]()
        var memo = [Int:Bool]()
        
        func dfs(_ node: Int, _ seen: Set<Int>) -> Bool {
            // Check if terminal node:
            if graph[node].isEmpty { return true }

            if let cache = memo[node] {
                return cache
            }

            // Check for cycle:
            if seen.contains(node) { return false }

            var seen = seen

            seen.insert(node)
            var result = true

            // Check all paths through adjacent nodes:
            for neighbor in graph[node] {
                // If one adjacent node leads to cycle
                // root is not a safe node:
                if !dfs(neighbor, seen) { result = false; break; }
            }
            
            memo[node] = result
            return result
        }

        for i in 0..<graph.count {
            if dfs(i, Set<Int>()) { result.append(i) }
        }

        return result
    }
}
