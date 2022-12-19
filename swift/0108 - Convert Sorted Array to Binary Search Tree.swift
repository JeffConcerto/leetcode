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
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
         let middle = nums.count / 2

        var root = TreeNode(nums[middle])

        let leftSide = Array(nums[0..<middle])
        let rightSide = Array(nums[middle+1..<nums.count])

        if !leftSide.isEmpty {
            root.left = sortedArrayToBST(leftSide)
        }

        if !rightSide.isEmpty {
            root.right = sortedArrayToBST(rightSide)
        }

        return root   
    }
}
