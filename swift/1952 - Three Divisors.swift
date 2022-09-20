class Solution {
    func isThree(_ n: Int) -> Bool {
        guard n  > 3 else { return false }
        var count = 0
        
        for num in 2...n/2 {
            if n.isMultiple(of: num) {
                count += 1
                if count > 1 { return false }
            }
        }
        
        return count == 1
    }
}
