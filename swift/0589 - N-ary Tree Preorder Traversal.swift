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
    func preorder(_ root: Node?) -> [Int] {
        var array = [Int]()

        func dfs(_ node: Node?)  {
            guard let node = node else { return }
            
            array.append(node.val)
    
            for child in node.children {
                dfs(child)
            }
        }
    	
        dfs(root)
        return array
    }
}
