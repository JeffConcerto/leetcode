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
    func isCompleteTree(_ root: TreeNode?) -> Bool {
        guard root != nil else { return false }
        var queue = [root]
        var level = -1

        while !queue.isEmpty {
            level += 1
            let size = queue.count
            var levelArray = [Int?]()
            for _ in 0..<size {
                let node = queue.removeFirst()
                if node == nil {
                    levelArray.append(nil)
                } else {
                    levelArray.append(node!.val)
                }
                if node != nil {
                 queue.append(node?.left)
                queue.append(node?.right)
                }
            }

            if queue.isEmpty { break }

            if Double(levelArray.count) != pow(2.0, Double(level)) { return false }
            
            var nilStarted = false
            for value in levelArray {
                if nilStarted && value != nil {
                    return false
                } else if !nilStarted && value == nil {
                    nilStarted = true
                }
            } 
        }

        return true
    }
}
