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
    func findMode(_ root: TreeNode?) -> [Int] {
        var stack = [root]
        var map = [Int:Int]()

        while !stack.isEmpty {
            let top = stack.removeLast()
            if let node = top {
                map[node.val, default: 0] += 1
                stack.append(node.left)
                stack.append(node.right)
            }
        }

        let mode = map.values.max() ?? 0
        var result = [Int]()
        for (key,value) in map {
            if value == mode {
                result.append(key)
            }
        }

        return result
    }
}
