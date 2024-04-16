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
    func addOneRow(_ root: TreeNode?, _ val: Int, _ depth: Int) -> TreeNode? {
        var queue = [root]
        var currentDepth = 1
        while !queue.isEmpty {
            let size = queue.count

            for _ in 0..<size {
                let node = queue.removeFirst()

                if node?.left != nil {
                    queue.append(node!.left)
                    if currentDepth == depth-1 {
                        node!.left = TreeNode(val)
                        node!.left!.left = queue.removeLast()
                    }
                } else if currentDepth == depth-1 {
                    node!.left = TreeNode(val)
                }

                if node?.right != nil {
                    queue.append(node!.right)
                    if currentDepth == depth-1 {
                        node!.right = TreeNode(val)
                        node!.right!.right = queue.removeLast()
                    }
                } else if currentDepth == depth-1 {
                    node!.right = TreeNode(val)
                }
            }
        
            currentDepth += 1

            if currentDepth == depth { break }
        }
        
        if depth == 1 {
            return TreeNode(val, root, nil)
        }
        return root
    }
}
