class Solution {
    func validPalindrome(_ s: String) -> Bool {
        let s = Array(s)

        func dfs(_ left: Int, _ right: Int, _ deletes: Int) -> Bool {
            if deletes < 0 { return false }
            if left >= right { return true }

            if s[left] == s[right] {
                return dfs(left+1, right-1, deletes)
            } else {
                return dfs(left+1,right, deletes-1) || dfs(left, right-1, deletes-1)
            }
        }

        return dfs(0,s.count-1, 1)
    }
}
