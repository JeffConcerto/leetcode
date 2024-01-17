class Solution {
    func checkValidString(_ s: String) -> Bool {
        let s = Array(s)
        var memo = [[Int]:Bool]()
        func dfs(_ i: Int, _ left: Int) -> Bool {
            if i == s.count { return left == 0 }
            if let cache = memo[[i,left]] { return cache }
            var result = false
            if s[i] == "(" {
                result = dfs(i+1, left+1)
            } else if s[i] == "*" {
                if left > 0{
                    result = dfs(i+1, left-1) 
                }
                result = result || dfs(i+1, left) || dfs(i+1, left+1)
            } else {
                if left <= 0 { return false }
                result = dfs(i+1, left-1)
            }
            
            memo[[i,left]] = result
            return result
        }

        return dfs(0,0)
    }
}

