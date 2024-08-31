/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {
    func postorder(_ root: Node?) -> [Int] {
    	var order = [Int]()

        func helper(_ root: Node?) {
            guard let root else { return }
            for child in root.children {
                helper(child)
            }
            order.append(root.val)
        }

        helper(root)

        return order
    }
}
