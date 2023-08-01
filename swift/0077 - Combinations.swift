class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var result = [[Int]]()

        func dfs(_ i: Int, _ current: [Int]) {
            if current.count == k {
                result.append(current)
            } else if i > n {
                return
            } else {
                dfs(i+1, current + [i])
                dfs(i+1, current)
            }
        }

        dfs(1,[Int]())
        return result
    }
}


