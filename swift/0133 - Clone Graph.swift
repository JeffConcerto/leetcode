/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var neighbors: [Node?]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.neighbors = []
 *     }
 * }
 */

class Solution {
    func cloneGraph(_ node: Node?) -> Node? {
        guard node != nil else { return nil }

        var visited = [Int:Node?]()

        func dfs(_ node: Node?) -> Node? {
            guard node != nil else { return nil }

            var newNode = Node(node!.val)
            visited[node!.val] = newNode

            for neighbor in node!.neighbors  where neighbor != nil {
                if visited[neighbor!.val] != nil {
                    newNode.neighbors.append(visited[neighbor!.val]!)
                } else {
                    newNode.neighbors.append(dfs(neighbor))
                }
            }

            return newNode
        }
        
        return dfs(node)
    }
}
