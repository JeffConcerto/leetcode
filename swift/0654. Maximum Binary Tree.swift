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
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        func helper(_ left: Int, _ right:Int) -> TreeNode? {
            guard left <= right else { return nil }
            var maxI = left
            for i in left...right {
                if nums[i] > nums[maxI] {
                    maxI = i
                    }
            }
            var head = TreeNode(nums[maxI])

            head.left = helper(left, maxI-1)
            head.right = helper(maxI+1,right)
            return head
        }

        return helper(0, nums.count-1)
    }
}
