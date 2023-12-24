class Solution {
    func minOperations(_ s: String) -> Int {
        let s = Array(s)
        func dfs(_ i: Int, _ last: Character) -> Int {
            if i == s.count { return 0 }
            
            let change: Character = s[i] == "0" ? "1" : "0"
            let keep = s[i]
            var result = Int.max
            if change != last {
                result = min(result, 1 + dfs(i+1,change))
            }
            if keep != last {
                result = min(result, dfs(i+1,keep))
            }

           return result
        }

        return min(dfs(0,"0"), dfs(0,"1"))
    }
}



