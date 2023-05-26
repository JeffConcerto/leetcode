class Solution {
    func stoneGameII(_ piles: [Int]) -> Int {
        var memo = [[Int]:Int]()
        
        func dfs(_ index: Int, _ m: Int, _ turn: Int) -> Int {
            guard index != piles.count else { return 0}
            if let cache = memo[[index,m,turn]] {
                return cache
            }

            var count = turn % 2 == 0 ? 0 : 999999
            var sum = 0 
            for i in 1...2*m {
                guard index+i-1 < piles.count else { break }
                sum += piles[i+index-1]
                if turn % 2 == 0 {
                    count = max(count, sum + dfs(index+i, max(i,m), turn+1))
                } else {
                    count = min(count, dfs(index+i, max(i,m), turn+1))
                }    
            }
            memo[[index,m,turn]] = count
           return count
        }

        return dfs(0, 1, 0)
    }
}
