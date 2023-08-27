class Solution {
    func canCross(_ stones: [Int]) -> Bool {
        let end = stones.last!
        let stones = Set(stones)
        var memo = [[Int]:Bool]()

        func dfs(_ i: Int, _ hops: Int) -> Bool {
            if i == end { return true }
            if i > end || hops == 0 || !stones.contains(i) { return false }
            if let cache = memo[[i,hops]] { return cache }

            var result = dfs(i+hops, hops)
            result = result || dfs(i+hops+1, hops+1)
            if hops > 1 {
             result = result || dfs(i+hops-1, hops-1)
            }

            memo[[i,hops]] = result
            return result
        }

       return dfs(1, 1)
    }
}

