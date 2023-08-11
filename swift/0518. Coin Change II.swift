class Solution {
    func change(_ amount: Int, _ coins: [Int]) -> Int {
        var memo = [String: Int]()
        let coins = coins.sorted(by:>)

        func combinations(_ money: Int, _ coin: Int) -> Int {
            guard coin < coins.count else { return 0 }
            if money == 0 {
                return 1
            } else if let cache = memo["\(money),\(coin)"] {
                return cache
            } else {
                var result = 0
                if (money-coins[coin] >= 0) {
                    result += combinations(money-coins[coin], coin)
                }
                result += combinations(money, coin+1)
                memo["\(money),\(coin)"] = result
                return result
            }
        }
        return combinations(amount, 0)
    }
}
