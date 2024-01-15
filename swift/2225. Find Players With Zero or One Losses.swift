class Solution {
    func findWinners(_ matches: [[Int]]) -> [[Int]] {
        var list = Array(repeating: -1, count: 1_000_01)

        for match in matches {
            let winner = match[0]
            let loser = match[1]
            if list[winner] == -1 { list[winner] = 0 }
            if list[loser] == -1 { 
                list[loser] = 1
            } else {
                list[loser] += 1
            }
        }

        var noLosses = [Int]()
        var oneLoss = [Int]()

        for (i, losses) in list.enumerated() {
            if losses == 0 {
                noLosses.append(i)
            } else if losses == 1 {
                oneLoss.append(i)
            }
        }

        return [noLosses,oneLoss]
    }
}
