//DFS:
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
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        let left = 1+minDepth(root?.left ?? nil)
        let right = 1+minDepth(root?.right ?? nil)
        let minimum = min(left,right)

        return minimum == 1 ? max(left,right) : minimum
    }
}

//BFS:
class Solution {
    func minDepth(_ root: TreeNode?) -> Int {
        guard root != nil else { return 0 }
        var depth = 0
        var queue = [root]

        while !queue.isEmpty {
            let size = queue.count
            for _ in 0..<size {
                let node = queue.removeFirst()

                if node!.right == nil && node!.left == nil {
                    return depth + 1
                }

                if let left = node?.left {
                    queue.append(left)
                }

                if let right = node?.right {
                    queue.append(right)
                }

                
            }
            depth += 1
        }

        return depth
    }
}
