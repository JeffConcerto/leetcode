class Solution {
    func minInsertions(_ s: String) -> Int {
        let string = s
        var s = Array(s)
        var memo = [[Int]: Int]()

        func dfs(_ left: Int, _ right: Int) -> Int {
             if let cache = memo[[left,right]] {
                return cache
            }
            if right - left <= 1 { return s[right] == s[left] ? 0 : 1 }
           
            var count = 0
            if s[left] == s[right] {
                count = dfs(left+1,right-1)
            } else {
                count = min(dfs(left+1, right),dfs(left, right-1)) + 1
            }

            memo[[left,right]] = count
            
            return count
        }

        return dfs(0,s.count-1)
    }
}
