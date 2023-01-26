// Needed help to get solution:
class Solution {
    func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ k: Int) -> Int {
        var prices = Array(repeating: Int.max, count: n)
        prices[src] = 0
        
        for _ in 0...k {
            var tempPrices = prices
            for flight in flights {
                let (source, dest, price) = (flight[0], flight[1], flight[2])
                guard prices[source] != Int.max else { continue }
                let newPrice = prices[source] + price
                if newPrice < tempPrices[dest] {
                    tempPrices[dest] = newPrice
                }
            }
            prices = tempPrices
        }

        return prices[dst] == Int.max ? -1 : prices[dst]
    }
}
