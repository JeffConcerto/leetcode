class Solution {
    func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
        
        var bottles = numBottles
        var total = bottles
        var remainder = 0
        
        while bottles > 0 {
            let tempRemainder = (bottles + remainder) % numExchange
            bottles = (bottles + remainder) / numExchange
            total += bottles
            remainder = tempRemainder
        }
        
    
        return total
    }
}
