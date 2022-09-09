class Solution {
    func countGoodRectangles(_ rectangles: [[Int]]) -> Int {
        var count = 0
        var maxSide = 0
        
        for rec in rectangles {
            let cut = min(rec[0], rec[1])
            if cut == maxSide { 
                count += 1
            } else {
                maxSide = max(maxSide, cut)
                if maxSide == cut { count = 1 }
            }
        }
            
        return count
    }
}
