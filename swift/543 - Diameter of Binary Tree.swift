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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        let rootDepth = maxDepth(root)
        
        let leftDepth = diameterOfBinaryTree(root.left)
        
        let rightDepth = diameterOfBinaryTree(root.right)
                
        return max(max(rightDepth, leftDepth), rootDepth)
       
        
    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        let leftDepth = helper(root.left)
    
        let rightDepth = helper(root.right)
        
        return leftDepth + rightDepth
    }
    
    func helper(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        
        let leftDepth = helper(root.left) + 1
        let rightDepth = helper(root.right) + 1
        
        return max(leftDepth, rightDepth)
        
    }
}
