class Solution {
    func isWinner(_ player1: [Int], _ player2: [Int]) -> Int {
        var p1Score = player1[0]
        var p2Score = player2[0]
        
        for i in 1..<player1.count {
            p1Score += player1[i]
            p2Score += player2[i]

            if player1[i-1] == 10 || (i>1 && player1[i-2] == 10) {
                p1Score += player1[i]
            }

            if player2[i-1] == 10 || (i>1 && player2[i-2] == 10) {
                p2Score += player2[i]
            }
        }

        return p1Score == p2Score ? 0 : p1Score > p2Score ? 1 : 2
    }
}
