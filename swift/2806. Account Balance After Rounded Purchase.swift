class Solution {
    func accountBalanceAfterPurchase(_ purchaseAmount: Int) -> Int {
        let multiple: Int = {
            let remainder = purchaseAmount % 10
            var tens = purchaseAmount / 10
            if remainder >= 5 { tens += 1 }
            return (tens * 10)
        }()

        return 100 - multiple
    }
}
