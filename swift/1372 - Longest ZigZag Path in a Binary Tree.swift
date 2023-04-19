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
    func longestZigZag(_ root: TreeNode?) -> Int {
        var maxVisit = 0
        var seen = [[Int]:Int]()

        func dfs(_ node: TreeNode?, _ goLeft: Bool, _ i: Int) -> Int {
            guard let node = node else { return 0 }
            if node.left == nil && node.right == nil { return 0 }
            if (goLeft && node.left == nil) || (!goLeft && node.right == nil) {
                return 0
            }
            
            var count = 0
            if goLeft {
                count = dfs(node.left, false, i+1) + 1
                dfs(node.left, true, i+2)
            } else {
                count = dfs(node.right, true, i+2) + 1
                dfs(node.right, false, i+1)
            }

            maxVisit = max(maxVisit, count)
            return count
        }

        dfs(root,true,0)
        dfs(root,false,0)
        return maxVisit
    }
}
