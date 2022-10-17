class Solution {
    func minimumRecolors(_ blocks: String, _ k: Int) -> Int {
        var blocks = Array(blocks)
        var minCount = Int.max
        
        for i in 0..<blocks.count-k+1 {
            var tempWCount = 0
            for j in i..<i+k {
                if blocks[j] == "W" { tempWCount += 1 }
            }
            minCount = min(minCount, tempWCount)
        }
        
        return minCount
    }
}
