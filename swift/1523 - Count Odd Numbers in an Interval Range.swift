class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        var count = (high - low) / 2
        if low % 2 == 1 || high % 2 == 1 { count += 1 }
        return count
    }
}
