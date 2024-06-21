class Solution {
    func maxSatisfied(_ customers: [Int], _ grumpy: [Int], _ minutes: Int) -> Int {
        var currentLost = 0
        var maxLost = 0
        var left = 0
        var maxLostStart = 0
        for right in 0..<customers.count {
            currentLost += grumpy[right] == 0 ? 0 : customers[right]

            if right-left == minutes {
                currentLost -= grumpy[left] == 0 ? 0 : customers[left]
                left += 1
            }

            if maxLost < currentLost {
                maxLostStart = left
                maxLost = currentLost
            }
        }

        var grumpy = grumpy

        for i in maxLostStart..<maxLostStart+minutes {
            if i == grumpy.count { break }
            grumpy[i] = 0
        }

        var satisfied = 0

        for i in 0..<customers.count {
            satisfied += grumpy[i] == 0 ? customers[i] : 0
        }

        return satisfied
    }
}
