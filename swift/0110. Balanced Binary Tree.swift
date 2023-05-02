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
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }

        let left = isBalanced(root.left)
        let right = isBalanced(root.right)

        if abs(depth(root.left) - depth(root.right)) < 2 && left && right {
            return true
        } else {
            return false
        }
    }

    func depth(_ root: TreeNode?) -> Int {
        guard let root = root else { return -1 }
        if root.left == nil && root.right == nil {
            return 0
        } else if root.left == nil {
          return depth(root.right) + 1  
        } else if root.right == nil {
            return depth(root.left) + 1
        } else {
            return max(depth(root.left), depth(root.right)) + 1
        }
    }
}
