class Solution {
    func furthestDistanceFromOrigin(_ moves: String) -> Int {
        var leftMoves = 0
        var rightMoves = 0

        for move in moves {
            if move == "L" {
                leftMoves -= 1
                rightMoves -= 1
            } else if move == "R" {
                leftMoves += 1
                rightMoves += 1
            } else {
                leftMoves -= 1
                rightMoves += 1
            }
        }

        return max(abs(leftMoves), abs(rightMoves))
    }
}
