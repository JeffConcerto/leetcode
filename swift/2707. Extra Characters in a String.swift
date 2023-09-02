class Solution {
    func minExtraChar(_ s: String, _ dictionary: [String]) -> Int {
        let s = Array(s)
        let dict = dictionary.sorted { $0.count>$1.count }
        var memo = [Int:Int]()

        func dfs(_ start: Int) -> Int {
            if start == s.count { return 0 }
            if let cache = memo[start] { return cache }

            var extra = Int.max
            for word in dict {
                if (start+word.count) > s.count { continue }
                if word == String(s[start..<start+word.count]) {
                    extra = min(dfs(start+word.count), extra)
                }
            }
                
            extra = min(1 + dfs(start+1), extra)
            memo[start] = extra
            return extra
        }
        

        return dfs(0)
    }
}
