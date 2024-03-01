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
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
           guard root != nil && subRoot != nil else {
                return root == nil && subRoot == nil
            }
         if root?.val == subRoot?.val {
            if isEqual(root, subRoot) { return true }
            return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
        } else {
            return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
        }
    }

      func isEqual(_ roots: TreeNode?, _ subroots: TreeNode?) -> Bool {
            guard roots != nil && subroots != nil else {
                return roots == nil && subroots == nil
            }
            if roots!.val != subroots!.val { return false }
            return isEqual(roots!.left, subroots!.left) && isEqual(roots!.right, subroots!.right)
        }
}
