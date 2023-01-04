class Solution {
    func minimumRounds(_ tasks: [Int]) -> Int {
        let difficultyCounts = getCountsForDifficulties(in: tasks)

        var minRounds = 0

        for (_ , count) in difficultyCounts {
            let rounds = timesDivideBy3And2(count)
            guard rounds > 0 else { return -1 }
            minRounds += rounds
        }

        return minRounds
    }

    private func getCountsForDifficulties(in tasks: [Int]) -> [Int: Int] {
        var hash = [Int: Int]()

        for difficulty in tasks {
            hash[difficulty, default: 0] += 1
        }

        return hash
    }

    private func timesDivideBy3And2(_ number: Int) -> Int {
        var num = number
        guard num % 3 != 0 else { return num / 3 }
        var count = 0
        var dividesBy3 = num / 3
        var remainder = num % 3
        num -= dividesBy3 * 3

        while remainder % 2 != 0 {
            num += 3
            guard num <= number else { return -1 }
            dividesBy3 -= 1
            remainder = num % 2
        }

        return dividesBy3 + (num / 2)

        
        
    }
}
