class Solution {
    func validPath(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
        if edges.isEmpty && destination == 0 { return true }
        var stack = [source]
        var seen: Set<Int> = [source]
        
        while !stack.isEmpty {
            let vertex = stack.removeLast()
            for edge in edges {
                if vertex == edge[0] {
                    if edge[1] == destination { return true }
                    if !seen.contains(edge[1]) {
                        stack.append(edge[1])
                        seen.insert(edge[1])
                    }
                } else if vertex == edge[1] {
                     if edge[0] == destination { return true }
                    if !seen.contains(edge[0]) {
                        stack.append(edge[0])
                        seen.insert(edge[0])
                    }
                }   
            }
        }
        
        return false
    }
}
