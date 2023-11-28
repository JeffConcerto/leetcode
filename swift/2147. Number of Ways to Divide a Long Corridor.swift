class Solution {
    func numberOfWays(_ corridor: String) -> Int {
        let mod = 1_000_000_007
        var ways = 1
        var seats = 0
        var waysForSection = 0

        for char in corridor {
            if char == "S" {
                seats += 1
            }

            if seats % 2 == 0 && seats > 0 {
                waysForSection += 1
            } else if seats % 2 == 1 && waysForSection > 0 {
                ways *= waysForSection
                ways %= mod
                waysForSection = 0
            }      
        }

        return seats >= 2 && seats % 2 == 0 ? ways : 0
    }
}
