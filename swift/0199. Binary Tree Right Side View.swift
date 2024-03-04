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
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard root != nil else { return [] }
        var queue = [root]
        var result = [Int]()
        while !queue.isEmpty {
            let size = queue.count
            for i in 0..<size {
                let node = queue.removeFirst()
                if i == 0 {
                    result.append(node!.val)
                } 
                
                if node!.right != nil {
                    queue.append(node!.right)
                }
                if node!.left != nil {
                    queue.append(node!.left)
                }
            }
        }

        return result
    }
}
