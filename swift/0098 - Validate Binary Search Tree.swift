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
    func isValidBST(_ root: TreeNode?) -> Bool {
        guard let root = root else { return false }

        func dfs(_ node: TreeNode?, _ min: Int, _ max: Int) -> Bool {
            guard let node = node else { return true }
            
            if node.val < min || node.val > max { return false }

            if let leftChild = node.left {
                if leftChild.val >= node.val { return false }
            }

            if let rightChild = node.right {
                if rightChild.val <= node.val { return false }
            }

            return dfs(node.left, min, node.val-1) && dfs(node.right, node.val+1, max)
        }

        return dfs(root, -Int.max, Int.max)
    }
}
