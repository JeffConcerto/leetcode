class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var maxWealth = 0
        
        for account in accounts {
            let total = account.reduce(0, +)
            maxWealth = max(total, maxWealth)
        }
        
        return maxWealth
    }
}
