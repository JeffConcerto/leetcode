class Solution {
    func smallestEvenMultiple(_ n: Int) -> Int {
        if n % 2 == 0 { return n }
        
        return n * 2
    }
}
