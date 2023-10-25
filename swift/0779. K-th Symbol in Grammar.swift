class Solution {
    func kthGrammar(_ n: Int, _ k: Int) -> Int {
        func dfs(_ row: Int, _ target: Int, _ root: Int) -> Int {
            if row == 1 { return root }

            let totalNodes = Int(pow(2.0, Double(row-1)))

            if target > totalNodes / 2 {
                let nextRoot = root == 0 ? 1 : 0
                return dfs(row-1,target-totalNodes/2,nextRoot)
            } else {
                let nextRoot = root == 0 ? 0 : 1
                return dfs(row-1, target,nextRoot)
            }
        }

        return dfs(n,k,0)
    }
}
