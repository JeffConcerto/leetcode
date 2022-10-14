class Solution {
    func bestHand(_ ranks: [Int], _ suits: [Character]) -> String {
        if suits.filter { $0 != suits[0]}.count == 0 { return "Flush" }
        
        var rankMap = [Int: Int]()
        var maxPair = 0
        
        for rank in ranks {
            rankMap[rank, default: 0] += 1
        }
        
        for value in rankMap.values {
            maxPair = max(maxPair, value)    
        }
        
        if maxPair >= 3 {
            return "Three of a Kind"
        } else if maxPair == 2 {
            return "Pair"
        } else {
            return "High Card" 
        }
    }
}
