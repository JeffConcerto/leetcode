class Solution {
    func canThreePartsEqualSum(_ arr: [Int]) -> Bool {
        var totalSum = arr.reduce(0, +)
        guard totalSum % 3 == 0 else { return false }
        let goalSum = totalSum / 3        
        var currentSum = 0
        var matchCount = 0
        
        for num in arr {
            if currentSum == Int.min { currentSum = 0 }
            currentSum += num
            if currentSum == goalSum && matchCount < 2 {
                currentSum = Int.min
                matchCount += 1
            }
        }        
        if currentSum == goalSum { matchCount += 1 }
        
        return matchCount == 3
    }
}
