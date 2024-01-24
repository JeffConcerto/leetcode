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
    func pseudoPalindromicPaths (_ root: TreeNode?) -> Int {
        var count = 0
        var map = [Int:Int]()
        func getPath(_ root: TreeNode?) {
            guard let root else { return }
            map[root.val, default: 0] += 1

            if root.left == nil && root.right == nil {
                 count += isPseudo() ? 1 : 0
            }

            getPath(root.left)
            getPath(root.right)

            map[root.val]! -= 1
        }
            func isPseudo() -> Bool {
                var odd = 0
        
                for val in map.values {
                    if val % 2 == 1 {
                        odd += 1
                    }
                    if odd > 1 { return false }
                }

                return true
    }   

        getPath(root)
        return count
    }

    
}
