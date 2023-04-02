class Solution {
    func successfulPairs(_ spells: [Int], _ potions: [Int], _ success: Int) -> [Int] {
        var pairs = spells
        var potions = potions.sorted(by:>)

        func successCount(_ spell: Int) -> Int {
            var low = 0
            var high = potions.count-1

            while low <= high {
                let middle = low + (high-low)/2

                let result = spells[spell] * potions[middle]
                if result >= success {
                    low = middle+1
                } else {
                    high = middle-1
                }
            }
            return low
        }

        for i in 0..<spells.count {
            if i > 0 && spells[i] == spells[i-1] {
                pairs[i] = pairs[i-1]
                continue
            }
            pairs[i] = successCount(i)
        }

    

        return pairs
    }
}
