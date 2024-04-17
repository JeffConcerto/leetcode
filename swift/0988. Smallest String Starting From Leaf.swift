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
    func smallestFromLeaf(_ root: TreeNode?) -> String {
        var smallest: [Int]? = nil
        func helper(_ root: TreeNode?, _ string: [Int]) {
            guard let root else { return }
            var string = string
            string.append(root.val)

            if root.left == nil && root.right == nil {
                if let currentSmallest = smallest {
                    smallest = getSmallest(currentSmallest, string.reversed())
                } else {
                    smallest = string.reversed()
                }
                return
            }
            
            helper(root.left, string)
            helper(root.right, string)
        }
        helper(root,[])
        let result = smallest!.reduce(into:"") {(string,num) in string.append(Character(UnicodeScalar(num+97)!)) }
        return result
    }

    func getSmallest(_ str1: [Int], _ str2: [Int]) -> [Int] {
        for i in 0..<min(str1.count, str2.count) {
            if str1[i] < str2[i] { 
                return str1
            } else if str2[i] < str1[i] {
                return str2
            }
        }

        return str1.count < str2.count ? str1 : str2
    }
}
