class Solution {
    func combinationSum(_ can: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        func dfs(_ i: Int, _ sum: Int, _ selected: [Int]) {
            if sum == target {
                result.append(selected)
            } else {
                if i == can.count || sum > target { return }
                dfs(i, sum+can[i], selected + [can[i]])
                dfs(i+1, sum, selected)
            }
        }

        dfs(0, 0, [])
        return result
    }
}
