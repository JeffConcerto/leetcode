class Solution {
    func winningPlayerCount(_ n: Int, _ pick: [[Int]]) -> Int {
        var picks = Array(repeating: Array(repeating: 0, count: 11), count:n)
        var count = 0
        var winners = Set<Int>()
        for pic in pick {
            let player = pic[0]
            if winners.contains(player) { continue }
            let color = pic[1]
            picks[player][color] += 1
            if picks[player][color] == player+1 {
                count += 1
                winners.insert(player)
            }
        }

        return count
    }
}
