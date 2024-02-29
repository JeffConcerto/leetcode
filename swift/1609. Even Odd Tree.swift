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
    func isEvenOddTree(_ root: TreeNode?) -> Bool {
        var queue = [root]
        var level = 0
        var lastNum = 0

        while !queue.isEmpty {
            let size = queue.count
            
            for _ in 0..<size {
                let node = queue.removeFirst()
                if level % 2 == 0 {
                    // - Even Level:
                    if node!.val % 2 == 0 || node!.val <= lastNum {
                        return false
                    }
                } else {
                    // - Odd Level:
                    if node!.val % 2 == 1 || node!.val >= lastNum {
                        return false
                    }
                }
                lastNum = node!.val

                if node!.left != nil {
                    queue.append(node!.left)
                }

                if node!.right != nil {
                    queue.append(node!.right)
                }
            }
            level += 1
            lastNum = level % 2 == 0 ? 0 : Int.max
        }


        return true
    }
}
