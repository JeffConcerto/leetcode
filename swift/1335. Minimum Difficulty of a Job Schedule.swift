class Solution {
    func minDifficulty(_ diff: [Int], _ d: Int) -> Int {
        var memo = [[Int]: Int]()
        
        func dfs(_ i: Int, _ currentMax: Int, _ splits: Int) -> Int {
            if i == diff.count && splits == d { return currentMax }
            if splits > d || i == diff.count { return 1_000_000 }
            if let cache = memo[[i,currentMax, splits]] { return cache }
            var result = 0
            let job = diff[i]
            let newMax = max(currentMax, job)
            let keep = dfs(i+1, newMax, splits)
            let split = currentMax + dfs(i+1, job, splits+1)
            result = min(keep,split)
            memo[[i,currentMax, splits]] = result
            return result
        }
        let result = dfs(0,0,0)
        return result == 1_000_000 ? -1 : result
    }
}
