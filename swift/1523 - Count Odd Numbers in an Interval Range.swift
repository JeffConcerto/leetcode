// Programming Solution:
class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        var count = 0
        
        for num in low...high where num % 2 == 1 {
            count += 1
        }

        return count
    }
}


// Math Solution:
class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
        var count = (high - low) / 2
        if low % 2 == 1 || high % 2 == 1 { count += 1 }
        return count
    }
}
