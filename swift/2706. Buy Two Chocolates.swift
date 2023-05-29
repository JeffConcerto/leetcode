class Solution {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        var mins = Array(repeating:Int.max, count: 2)

        for price in prices {
            if price < mins[0] {
                mins[1] = mins[0]
                mins[0] = price
            } else if price < mins[1] {
                mins[1] = price
            }
        }
        
        let leftover = money - (mins[0] + mins[1])
        
        return leftover >= 0 ? leftover : money
    }
}
