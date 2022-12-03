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
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        var array = [Int]()
        
        helper(root, &array)
        
        return getMinAbsDifference(for: array)
    }
    
    private func helper(_ root: TreeNode?, _ array: inout [Int]) {
        guard let root = root else { return }
        
        array.append(root.val)
        helper(root.left, &array)
        helper(root.right, &array)
    }
                        
    private func getMinAbsDifference(for array: [Int]) -> Int {
        var array = array.sorted()
        var minDifference = Int.max
        
        for i in 1..<array.count {
            minDifference = min(abs(array[i-1] - array[i]), minDifference)
        }
        
        return minDifference
    }
}
