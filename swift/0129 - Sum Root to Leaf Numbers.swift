 class Solution {
    func sumNumbers(_ root: TreeNode?) -> Int {
        var sum = 0

        func dfs(_ node: TreeNode?, _ string: String) {
            guard node != nil else { return}

            if node!.left == nil && node!.right == nil {
                let number = string + String(node!.val)
                sum += Int(number)!
                return
            }
            dfs(node!.left, string + String(node!.val))
            dfs(node!.right, string + String(node!.val))
        }

        dfs(root, "")
        return sum
    }
}
