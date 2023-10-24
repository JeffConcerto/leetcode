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
    func largestValues(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        var result = [Int]()

        var queue = [root]

        while !queue.isEmpty {
            let levelSize = queue.count
            var maxVal = -1_000_000_0007
            for _ in 0..<levelSize {
                let parent = queue.removeFirst()                
                maxVal = max(maxVal, parent.val)
        
                if let leftChild = parent.left {
                    queue.append(leftChild)
                }

                if let rightChild = parent.right {
                    queue.append(rightChild)
                }
            }
            result.append(maxVal)
        }

        return result
    }
}
