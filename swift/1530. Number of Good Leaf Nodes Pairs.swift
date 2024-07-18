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

 extension TreeNode: Hashable {
     // Equatable protocol conformance
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs === rhs // Identity check
    }

    // Hashable protocol conformance
    public func hash(into hasher: inout Hasher) {
        hasher.combine(ObjectIdentifier(self)) // Use ObjectIdentifier to hash the object identity
    }
 }
class Solution {
    func countPairs(_ root: TreeNode?, _ distance: Int) -> Int {
        var adjlist = [Int:[Int]]()
        var leaves = [Int]()
        var id = 0
        var idMap = [TreeNode: Int]()
        func traverse(_ node: TreeNode?, _ parent: TreeNode?) {
            guard let node else {  return }
            idMap[node] = id
            id += 1
            if let parent {
                let parentID = idMap[parent]!
                adjlist[id-1, default: []].append(parentID)
                adjlist[parentID, default: []].append(id-1)
            }
            traverse(node.left, node)
            traverse(node.right, node)
            if node.left == nil && node.right == nil {
                leaves.append(idMap[node]!)
            }
        }

        traverse(root, nil)
        var seen = Set<Int>()
        var otherLeaves = Set(leaves)

        func dfs(_ node: Int, _ distance: Int) -> Int {
            if distance < 0 || seen.contains(node) { return 0 }
            if otherLeaves.contains(node) { return 1 }
            seen.insert(node)
            var total = 0
            if let neighbors = adjlist[node] {
                for neighbor in neighbors {
                    total += dfs(neighbor, distance - 1)
                }
            }
            return total
        }

        var pairs = 0
        for i in 0..<leaves.count {
            otherLeaves.remove(leaves[i])
            seen = []
            pairs += dfs(leaves[i], distance)
        }
        return pairs
    }
}
