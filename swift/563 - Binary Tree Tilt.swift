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
    func findTilt(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        let leftTilt = findTilt(root.left)
        let rightTilt = findTilt(root.right)
        
        let leftSum = getValue(root.left)
        let rightSum = getValue(root.right)
        
        return abs(leftSum - rightSum) + leftTilt + rightTilt
    }
    
    func getValue(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0}
        return root.val + getValue(root.left) + getValue(root.right)
    }
}
