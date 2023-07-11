/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func distanceK(_ root: TreeNode?, _ target: TreeNode?, _ k: Int) -> [Int] {
        // Build Adjacency List:
        var adjList = [Int: [Int]]()

        func dfsBuildList(_ root: TreeNode?) {
            guard let root = root else { return }

            if root.left != nil {
                adjList[root.val, default:[]].append(root.left!.val)
                adjList[root.left!.val, default:[]].append(root.val)
            }

            if root.right != nil {
                adjList[root.val, default:[]].append(root.right!.val)
                adjList[root.right!.val, default:[]].append(root.val)
            }

            dfsBuildList(root.left)
            dfsBuildList(root.right)
        }

        dfsBuildList(root)

        // Search list for target nodes:
        var visited = Set<Int>()
        var result = [Int]()

        func dfsSearch(_ root: Int, _ distance: Int) {
            guard !visited.contains(root) else { return }
            if distance == 0 {
                result.append(root)
                return
            }
            visited.insert(root)

            if let neighbors = adjList[root] {
                for neighbor in neighbors where !visited.contains(neighbor) {
                    dfsSearch(neighbor, distance-1)
                }
            }
        }

        dfsSearch(target!.val, k)
        return result
    }
}
