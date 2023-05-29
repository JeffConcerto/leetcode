class Solution {
    func minCost(_ n: Int, _ cuts: [Int]) -> Int {
        var memo = [String: Int]()

        func dfs(_ l: Int, _ r: Int) -> Int {
            guard memo["\(l),\(r)"] == nil else { return memo["\(l),\(r)"]! }
            guard r-l > 1 else { return 0 }

            var cost = Int.max
            for cut in cuts {
                guard cut > l && cut < r else { continue }
                cost = min(cost, r-l + dfs(l,cut) + dfs(cut,r))
            }
            memo["\(l),\(r)"] = cost != Int.max ? cost : 0
            return memo["\(l),\(r)"]!
        }

        return dfs(0, n)
        
    }
}
