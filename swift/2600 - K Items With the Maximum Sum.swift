class Solution {
    func kItemsWithMaximumSum(_ numOnes: Int, _ numZeros: Int, _ numNegOnes: Int, _ k: Int) -> Int {
        var totalItems = 0
        var sum = 0

        totalItems += min(numOnes, k)
        sum = totalItems
        if totalItems == k { return sum }

        totalItems += min(numZeros, k - totalItems)
        if totalItems == k { return sum }

        let currentItemAmount = totalItems
        totalItems += min(numNegOnes, k - totalItems)
        let negativesAdded = totalItems - currentItemAmount
        sum -= negativesAdded
        
        return sum
    }
}
