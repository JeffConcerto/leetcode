class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var currentAlt = 0
        var maxAlt = 0
        
        for difference in gain {
            currentAlt += difference
            maxAlt = max(maxAlt, currentAlt)
        }
        
        return maxAlt
    }
}
