class Solution {
    func isCovered(_ ranges: [[Int]], _ left: Int, _ right: Int) -> Bool {
        
        for num in left...right {
            var isCovered = false
            
            for range in ranges {
                if num >= range[0] && num <= range[1] {
                    isCovered = true
                }
                if isCovered { break }
            }
            
            if !isCovered { return false }
        }

        
        return true
    }
}
