class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        guard cost.count > 2 else { return min(cost[0], cost[1]) }
        var dp = cost

        for i in 2..<cost.count {
            dp[i] = min(dp[i-2] + dp[i], dp[i-1]+dp[i])
        }

        return min(dp[cost.count-2], dp[cost.count-1])
    }
}
