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
    func goodNodes(_ root: TreeNode?) -> Int {
        var goodCount = 0

        func dfs(_ root: TreeNode?, _ maxPath: Int) {
            guard let root else { return }
            if root.val >= maxPath {
                goodCount += 1
            }
            dfs(root.left, max(maxPath,root.val))
            dfs(root.right, max(maxPath,root.val))
        }
        
        dfs(root, -1_000_000)
        return goodCount
    }
}
