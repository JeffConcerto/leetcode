class Solution {
    func maxProfitAssignment(_ difficulty: [Int], _ profit: [Int], _ worker: [Int]) -> Int {
        // Each worker must do the most profitable job they can
        // Find most profitable job given a certain ability

        var mapProfit = [Int:Int]()
        for i in 0..<difficulty.count {
            mapProfit[difficulty[i]] = max(mapProfit[difficulty[i]] ?? 0, profit[i])
        }

        let difficulty = difficulty.sorted()
        var currentMaxProfit = 0
        var updatedDiff = [Int]()
        for diff in difficulty {
            guard mapProfit[diff]! > currentMaxProfit else { continue }
            updatedDiff.append(diff)
            currentMaxProfit = mapProfit[diff]!
        }
        var array = Array(repeating: 0, count: updatedDiff.max()!+1)

        var currentDiff = updatedDiff[0]

        if updatedDiff.count == 1 {
            for i in currentDiff..<array.count {
                array[i] = currentDiff
            }
        }

        for i in 1..<updatedDiff.count {
            let diff = updatedDiff[i]
            let profit = mapProfit[currentDiff]!
            for i in currentDiff...diff {
                array[i] = profit
            }

            currentDiff = diff
        }

        if updatedDiff.count > 1 {
            array[currentDiff] = mapProfit[currentDiff]!
        }

        var totalProfit = 0

        for work in worker {
            if work < array.count {
                totalProfit += array[work]
            } else {
                totalProfit += array.last!
            }
            
        }

        return totalProfit
    }
}
