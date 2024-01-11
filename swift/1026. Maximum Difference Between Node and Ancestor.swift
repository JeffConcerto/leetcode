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
    func maxAncestorDiff(_ root: TreeNode?) -> Int {
        var maxDiff = 0

        func dfs(_ root: TreeNode?, _ mini: Int?, _ maxi: Int?) {
            guard let root else { return }

            if let mini { 
                maxDiff = max(maxDiff, abs(root.val-mini))
            }
            if let maxi {
                maxDiff = max(maxDiff, abs(root.val-maxi))
            }

            let newMini = min(mini ?? root.val, root.val)
            let newMaxi = max(maxi ?? root.val, root.val)
            dfs(root.left, newMini, newMaxi)
            dfs(root.right, newMini, newMaxi)
        }

        dfs(root, nil, nil)
        return maxDiff
    }
}
