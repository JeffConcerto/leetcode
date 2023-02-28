/**
// Solution adapted from NeetCode, couldn't solve on own:

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
    func findDuplicateSubtrees(_ root: TreeNode?) -> [TreeNode?] {
        var subtrees = [String: [TreeNode]]()
        var result = [TreeNode?]()

        func dfs(_ root: TreeNode?) -> String {
            guard let root = root else { return "nil" }

            let string = String(root.val) + "," + dfs(root.left) + "," + dfs(root.right)
            if let count = subtrees[string]?.count {
                if count == 1 {
                    result.append(root)
                }
            }
            subtrees[string, default: []].append(root)
            return string
        }
        dfs(root)
        return result
    }
}
