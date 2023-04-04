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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil { return []}

        var result = [[Int]]()
        var queue = [root]

        while !queue.isEmpty {
            let size = queue.count
            var level = [Int]()
    
            for _ in 0..<size {
                let node = queue.removeFirst()
                level.append(node!.val)

                if node!.left != nil {
                    queue.append(node!.left)
                }

                if node!.right != nil {
                    queue.append(node!.right)
                }
    
            } // level complete
            
            result.append(level)
        }
        
        return result
    }
}
