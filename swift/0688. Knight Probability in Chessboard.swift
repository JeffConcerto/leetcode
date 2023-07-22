class Solution {
    func knightProbability(_ n: Int, _ k: Int, _ row: Int, _ column: Int) -> Double {
        // 8 choices:
        var choices = [(1,2),(-1,2),
        (2,1),(-2,1),
        (1,-2),(-1,-2),
        (2,-1),(-2,-1),
        ]
        // ? / 8 is in of bounds = probabilty for each move
        // previous prob * current prob = k probabilty

        // Get prob of one move
        var memo = [[Int]:Double]()

        func dfs(_ row: Int, _ col: Int, _ movesLeft: Int) -> Double {
            guard row >= 0 && row < n && col >= 0 && col < n else { return 0 }
            let key = [row,col,movesLeft]
            if let cache = memo[key] { return cache }
            var prob = 0.0

            if movesLeft > 0 {
                // 8 moves:
                for (rdelta, cdelta) in choices {
                    prob += dfs(row+rdelta, col+cdelta, movesLeft-1)
                }
                memo[key] = prob / 8.0
                return memo[key]!
            } 

            memo[key] = 1.0
             return 1.0
        }

        return dfs(row,column,k)
    }
}
