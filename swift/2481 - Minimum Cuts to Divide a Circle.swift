class Solution {
    func numberOfCuts(_ n: Int) -> Int {
        guard n > 1 else { return 0 }
        
        return n % 2 == 0 ? n / 2 : n
    }
}
