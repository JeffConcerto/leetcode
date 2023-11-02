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
    func averageOfSubtree(_ root: TreeNode?) -> Int {
        var result = 0

        func dfs(_ root: TreeNode?) -> (sum: Int, nodes: Int) {
            guard let root = root else { return (0,0) }

            var sum = root.val
            var totalNodes = 1
            let (leftSum, totalLeftNodes) = dfs(root.left)
            let (rightSum, totalRightNodes) = dfs(root.right)
            
            sum += leftSum + rightSum
            totalNodes += totalLeftNodes + totalRightNodes

            if root.val == sum / totalNodes {
                result += 1
            }

            return (sum, totalNodes)
        }

        dfs(root)
        return result
    }
}
