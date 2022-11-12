class Solution {
    func minCostToMoveChips(_ position: [Int]) -> Int {
        var hashFreq = [Int: Int]()
        var evenCount = 0
        var oddCount = 0
        
        for pos in position {
            hashFreq[pos, default: 0] += 1
            if pos % 2 == 0 {
                evenCount += 1
            } else {
                oddCount += 1
            }
        }
        
        var maxEven = Int.min
        var maxEvenCount = 0
        var maxOdd = Int.min
        var maxOddCount = 0
        
        for (key, value) in hashFreq {
            if key % 2 == 0 {
                if maxEvenCount < value {
                    maxEvenCount = value
                    maxEven = key
                }
            } else {
                if maxOddCount < value {
                    maxOddCount = value
                    maxOdd = key
                }
            }
        }
        
        let mainPos = evenCount >= oddCount ? maxEven : maxOdd
        
        var totalCost = 0
        
        for pos in position {
            totalCost += abs(mainPos - pos) % 2
        }
        
        return totalCost
    }
}
