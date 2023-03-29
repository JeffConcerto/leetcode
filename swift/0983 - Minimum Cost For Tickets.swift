class Solution {
    func mincostTickets(_ days: [Int], _ costs: [Int]) -> Int {
        var dp = Array(repeating: 0, count: days.count+1)

        func dfs(_ index: Int) -> Int {
            guard index < days.count else { return 0 }

            if dp[index] != 0 { return dp[index] }

            let cost1 = costs[0] + dfs(index+1)

            let cost2 = costs[1] + dfs(getNextIndex(index,7))

            let cost3 = costs[2] + dfs(getNextIndex(index,30))

            dp[index] = min(cost1,cost2,cost3)

            return dp[index]
        }

        func getNextIndex(_ startingIndex: Int, _ daysPassed: Int) -> Int {
            var index = startingIndex + 1
            while index < days.count && days[index] <= days[startingIndex] + daysPassed-1 {
                index += 1
            }

            return index
        }

        return dfs(0)
    }
}
