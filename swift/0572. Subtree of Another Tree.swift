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
        guard root != nil && subRoot != nil else { return root === subRoot }
        return isSameTree(root, subRoot) || isSubtree(root?.left, subRoot) ||
        isSubtree(root?.right, subRoot)

        func isSameTree(_ node1: TreeNode?, _ node2: TreeNode?) -> Bool {
            guard let node1, let node2 else {
                return node1 === node2
            }
            return node1.val == node2.val &&
            isSameTree(node1.left, node2.left) && isSameTree(node1.right,node2.right)
        }
    }
}
