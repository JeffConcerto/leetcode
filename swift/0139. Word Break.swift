class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        let s = Array(s)
        var memo = [String:Bool]()

        func dfs(_ i: Int, _ current: String) -> Bool {
            if let cache = memo["\(i)\(current)"] { return cache }
            var result = false
            if wordDict.contains(current) {
               result = dfs(i, "") || dfs(i+1, "\(current)\(s[i])")
            } else if i >= s.count {
                result = current.isEmpty
            } else {
                result = dfs(i+1, "\(current)\(s[i])")
            }
           memo["\(i)\(current)"] = result
            return result
        }

        return dfs(0,"")
    }
}
