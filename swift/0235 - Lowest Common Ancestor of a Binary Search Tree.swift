/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }

        if p!.val <= root.val && q!.val >= root.val {
            return root
        } else if p!.val >= root.val && q!.val <= root.val {
            return root
        } else if p!.val < root.val && q!.val < root.val {
            return lowestCommonAncestor(root.left,p,q)
        } else {
            return lowestCommonAncestor(root.right,p,q)
        }
    }
}
