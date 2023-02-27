// Solution adpated from NeetCode:

/**
 * Definition for a QuadTree node.
 * public class Node {
 *     public var val: Bool
 *     public var isLeaf: Bool
 *     public var topLeft: Node?
 *     public var topRight: Node?
 *     public var bottomLeft: Node?
 *     public var bottomRight: Node?
 *     public init(_ val: Bool, _ isLeaf: Bool) {
 *         self.val = val
 *         self.isLeaf = isLeaf
 *         self.topLeft = nil
 *         self.topRight = nil
 *         self.bottomLeft = nil
 *         self.bottomRight = nil
 *     }
 * }
 */

class Solution {
    func construct(_ grid: [[Int]]) -> Node? {
        
        func dfs(_ n: Int, _ row: Int, _ col: Int) -> Node {
            var allSame = true
            for i in 0..<n {
                for j in 0..<n {
                    guard grid[row][col] == grid[row+i][col+j] else {
                        allSame = false
                        break
                    }
                }
            }

            if allSame {
                return Node(grid[row][col] == 1 ? true : false, true)
            }

            let n = n/2
            var node = Node(false, false)
            node.topLeft = dfs(n, row, col)
            node.topRight = dfs(n, row, col+n)
            node.bottomLeft = dfs(n, row+n, col)
            node.bottomRight = dfs(n,row+n,col+n)
            return node
        } 

        return dfs(grid.count,0,0)
    }
}
