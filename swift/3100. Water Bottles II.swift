class Solution {
    func maxBottlesDrunk(_ numBottles: Int, _ numExchange: Int) -> Int {
        var num = numBottles 
        var numExchange = numExchange
        var drank = 0
        while num >= numExchange {
            // - Remove empty bottles from num:
            num -= numExchange
            // - Add bottles drank to count:
            drank += numExchange
            // - Receieve One Full Bottle:
            num += 1
            // - Add one bottle to exchange rate:
            numExchange += 1
        }

        // - Add remaining full bottles to drank count:
        drank += num

        return drank
    }
}


