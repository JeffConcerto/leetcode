class Solution {
    func totalMoney(_ n: Int) -> Int {
        var day = 0
        var rate = 1
        var total = 0

        while day != n {
            if (day) % 7 == 0 && day != 0 { rate = (day / 7) + 1 }
            
            total += rate
            rate += 1
            day += 1
        }
        
        return total
    }
}
