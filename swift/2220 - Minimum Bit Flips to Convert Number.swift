class Solution {
    func minBitFlips(_ start: Int, _ goal: Int) -> Int {
        let startString = getBinaryString(for: start)
        let goalString = getBinaryString(for: goal)
        
        return getDifferencesBetween(startString, goalString)
    }
    
    func getBinaryString(for number: Int) -> String {
        var number = number
        var string = ""
        
        while number > 0 {
            string = String(number % 2) + string
            number /= 2
        }
        
        return string
    }
    
    func getDifferencesBetween(_ start: String, _ goal: String) -> Int {
        var start = start
        var goal = goal
        
        
        if start.count > goal.count {
            let addedZeros = start.count - goal.count
            for _ in 0..<addedZeros {
                goal = "0" + goal
            }
        } else if goal.count > start.count {
            let addedZeros = goal.count - start.count
            for _ in 0..<addedZeros {
                start = "0" + start
            }
        }
        
        var startA = Array(start)
        var goalA = Array (goal)
        var totalDifferences = 0
        
        for i in 0..<startA.count {
            if startA[i] != goalA[i] { totalDifferences += 1 }
        }
        
        return totalDifferences
    }
}
