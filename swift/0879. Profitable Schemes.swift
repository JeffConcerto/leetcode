class Solution {
    func profitableSchemes(_ n: Int, _ minProfit: Int, _ group: [Int], _ profit: [Int]) -> Int {
        let mod = Int(1e9 + 7)
        // var memo = Array(repeating: Array(repeating: -1, count: n+1), count: profit.count+1)
        var memo = [[Int]:Int]()

        func dfs(_ i: Int, _ totalProfit: Int, _ membersLeft: Int) -> Int {
            if i == profit.count { return totalProfit >= minProfit ? 1 : 0 }
            if membersLeft == 0 { return totalProfit >= minProfit ? 1 : 0 }
            // if memo[i][membersLeft] != -1 { return memo[i][membersLeft]}
            if let cache = memo[[i,min(totalProfit,minProfit),membersLeft]] {
                return cache
            }

            // Do Crime:
            let crime: Int
            if membersLeft - group[i] >= 0 {
                crime = dfs(i+1, totalProfit + profit[i],membersLeft-group[i]) % mod
            } else {
                crime = 0
            }
            // Don't Do Crime:
            let noCrime = dfs(i+1, totalProfit,membersLeft) % mod

           memo[[i,min(minProfit,totalProfit),membersLeft]] = crime + noCrime  % mod
            return memo[[i,min(minProfit,totalProfit),membersLeft]]!
        }

        return dfs(0,0,n) % mod
    }
}
