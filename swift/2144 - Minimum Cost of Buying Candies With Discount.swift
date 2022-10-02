class Solution {
    func minimumCost(_ cost: [Int]) -> Int {
        var cost = cost.sorted(by: >)
        var sumCost = 0 
        var candiesBought = 0
        
        for candy in cost {
            if candiesBought == 2 {
                candiesBought = 0
            } else {
                candiesBought += 1
                sumCost += candy
            }   
        }
        
        return sumCost
    }
}
