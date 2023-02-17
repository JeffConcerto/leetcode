class Solution {
    func minDiffInBST(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }

        var queue = [root]
        var values = [Int]()
        var minDifference = 10_000_000

        while !queue.isEmpty {
            let parent = queue.removeFirst()
            let parentVal = parent.val
            values.append(parentVal)

            if let leftChild = parent.left {
                queue.append(leftChild)
            }

            if let rightChild = parent.right {
                queue.append(rightChild)
            }
        }

        values.sort()

        for i in 1..<values.count {
            minDifference = min(minDifference, values[i]-values[i-1])
        }

        return minDifference
    }
}
