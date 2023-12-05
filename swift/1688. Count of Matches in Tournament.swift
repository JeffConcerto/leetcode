class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        var n = n
        var matchesPlayed = 0

        while n > 1 {
            if n % 2 == 0 {
                matchesPlayed += n / 2
                n /= 2
            } else {
                matchesPlayed += (n-1) / 2
                n /= 2
                n += 1
            }
        }

        return matchesPlayed
    }
}
