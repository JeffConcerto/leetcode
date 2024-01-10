/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func amountOfTime(_ root: TreeNode?, _ start: Int) -> Int {
        var map = [Int: [Int]]()

        func dfs(_ root: TreeNode?, _ parent: TreeNode?) {
            guard let root else { return }
            if let parent {
                map[parent.val, default: []].append(root.val)
                map[root.val, default:[]].append(parent.val)
            }
            dfs(root.left, root)
            dfs(root.right,root)
        }

        // Get adj list:
        dfs(root, nil)

        // BFS to determine time to infect all:
        var queue = [start]
        var seen = Set(queue)
        var time = 0
        
        while !queue.isEmpty {
            let size = queue.count
            for _ in 0..<size {
                let node = queue.removeFirst()

                if let neighbors = map[node] {
                    for neighbor in neighbors {
                        if seen.contains(neighbor) { continue }
                        seen.insert(neighbor)
                        queue.append(neighbor)
                    }
                }
            }
            time += 1
        }
        return time-1
    }
}
