class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var priceMin = prices[0]
        var profitMax = 0

        for i in 1..<prices.count {
            priceMin = min(prices[i], priceMin)
            profitMax = max(profitMax, prices[i]-priceMin)
        }

        return profitMax
    }
}
