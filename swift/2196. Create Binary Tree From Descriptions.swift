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
    func createBinaryTree(_ descriptions: [[Int]]) -> TreeNode? {
        var nodeDic = [Int:TreeNode]()
        var isChildSet = Set<Int>()
        for description in descriptions {
            let parentVal = description[0]
            let childVal = description[1]
            if nodeDic[parentVal] == nil {
                nodeDic[parentVal] = TreeNode(parentVal)
            }
            if nodeDic[childVal] == nil {
                nodeDic[childVal] = TreeNode(childVal)
            }
            let parent = nodeDic[parentVal]!
            let child = nodeDic[childVal]!
            if description[2] == 1 {
                parent.left = child
            } else {
                parent.right = child
            }

            isChildSet.insert(childVal)
        }

        for description in descriptions {
            if !isChildSet.contains(description[0]) {
                return nodeDic[description[0]]!
            }
        }

        return nil
    }
}
