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
    func balanceBST(_ root: TreeNode?) -> TreeNode? {
        var nums = [Int]()

        func dfs(_ root: TreeNode?) {
            guard let root else { return }
            dfs(root.left)
            nums.append(root.val)
            dfs(root.right)
        }
        func newTree(_ left: Int, _ right:Int) -> TreeNode? {
            if left < 0 || right == nums.count || left > right { return nil }
            let mid = (right+left)/2
            var root: TreeNode? = TreeNode(nums[mid])
            root?.left = newTree(left, mid-1)
            root?.right = newTree(mid+1,right)
            return root
        }
        dfs(root)
        let newRoot = newTree(0, nums.count-1)
        return newRoot
    }
}
