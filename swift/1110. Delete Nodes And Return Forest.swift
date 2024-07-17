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
    func delNodes(_ root: TreeNode?, _ to_delete: [Int]) -> [TreeNode?] {
        guard let root else { return [] }
        var set: [TreeNode?] = Array(repeating: nil, count: 1001)
        
        set[root.val] = root
        
        func dfs(_ node: TreeNode?, _ deleteRoot: Bool ) {
            guard let node else { return }
            if let left = node.left {
                if to_delete.contains(left.val) {
                    node.left = nil
                    if set[left.val] != nil {
                        set[left.val] == nil
                    }
                    dfs(left, true)
                } else {
                    dfs(left, false)
                }
            }

            if let right = node.right {
                if to_delete.contains(right.val) {
                    if set[right.val] != nil {
                        set[right.val] = nil
                    }
                    node.right = nil
                    dfs(right, true)
                } else {
                    dfs(right, false)
                }
            }

             if deleteRoot {
                if set[node.val] != nil {
                        set[node.val] = nil
                }
                if let left = node.left {
                    set[left.val] = node.left
                } 
                if let right = node.right {
                    set[right.val] = node.right
                }
                node.left = nil
                node.right = nil
            }
        }

        dfs(root, to_delete.contains(root.val))
        var result = [TreeNode?]()

        for node in set where node != nil {
            result.append(node)
        }
        return result
    }
}
