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
    func maxLevelSum(_ root: TreeNode?) -> Int {
        var maxSum = Int.min
        var maxLevel = 0
        var currentLevel = 1
        var queue = [root]

        while !queue.isEmpty {
            let size = queue.count
            var currentSum = 0
            for _ in 0..<size {
                if let node = queue.removeFirst() {
                    currentSum += node.val
                    if node.left != nil {
                        queue.append(node.left)
                    }
                    if node.right != nil {
                        queue.append(node.right)
                    }
                }
            }
            if currentSum > maxSum {
                maxSum = currentSum
                maxLevel = currentLevel
            }
            currentLevel += 1
        }
        
        return maxLevel
    }
}
