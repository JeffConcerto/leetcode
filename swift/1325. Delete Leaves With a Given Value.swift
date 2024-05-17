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
    func removeLeafNodes(_ root: TreeNode?, _ target: Int) -> TreeNode? {
        func helper(_ root: TreeNode?, _ parent: TreeNode?, _ isLeft: Bool) {
            guard let root else { return }
            helper(root.left, root, true)
            helper(root.right, root, false)
            
            if root.left == nil && root.right == nil && root.val == target {
                if isLeft {
                    parent?.left = nil
                } else {
                    parent?.right = nil
                }
            } 
        }
        helper(root, nil, false)
        if root?.val == target && root?.left == nil && root?.right == nil {
            return nil
        }
        return root
    }
}
