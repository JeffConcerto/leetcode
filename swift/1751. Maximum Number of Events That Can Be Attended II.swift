class Solution {
    func maxValue(_ events: [[Int]], _ k: Int) -> Int {
        let events = events.sorted { $0[0] < $1[0] }
        var memo = [[Int]: Int]()

        func dfs(_ i: Int, _ endDay: Int, _ seen: Int) -> Int {
            if i == events.count || seen == k { return 0 }
            if let cache = memo[[endDay,seen]] { return cache }
            var result = 0
            if endDay < events[i][0] {
                result = events[i][2] + dfs(i+1, events[i][1], seen+1)
            }

            let skipEvent = dfs(i+1, endDay, seen)
            result = max(skipEvent, result)
            memo[[endDay,seen]] = result
            return result
        }
        
        return dfs(0,-1, 0)
    }
}
