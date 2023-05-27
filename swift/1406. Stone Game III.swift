class Solution {
    func stoneGameIII(_ stoneValue: [Int]) -> String {
        let totalPoints = stoneValue.reduce(0,+)
        var memo = [[Int]:Int]()

        func dfs(_ index: Int, _ isAlice: Bool) -> Int {
            if index >= stoneValue.count { return 0 }
            let aliceVal = isAlice ? 1 : 0
            if let cache = memo[[index,aliceVal]] {
                return cache
            }

            var count = isAlice ? -99999 : 99999
            var sum = 0

            for i in 1...3 {
                guard index + i <= stoneValue.count else { break }
                sum += stoneValue[index+i-1]
                if isAlice {
                   count = max(count, sum + dfs(index+i, !isAlice) )
                } else {
                    count = min(count, dfs(index+i, !isAlice))
                }  
            }

            memo[[index,aliceVal]] = count
            return count
        }

        let alicePoints = dfs(0,true)
        let bobPoints = totalPoints - alicePoints
        
        if alicePoints > bobPoints {
            return "Alice"
        } else if bobPoints > alicePoints {
            return "Bob"
        } else {
            return "Tie"
        }
    }
}
