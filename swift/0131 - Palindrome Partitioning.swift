class Solution {
    func partition(_ s: String) -> [[String]] {
        let s = Array(s)
        var result = [[String]]()

        func dfs(_ left: Int, _ right: Int, _ sub: [String]) {
            if right == s.count-1 {
                if isPal(left,right) {
                    var sub = sub
                    sub.append(String(s[left...right]))
                    result.append(sub)
                }
                return
            } else if right >= s.count { return }

            if isPal(left,right) {
                dfs(right+1, right+1, sub + [String(s[left...right])])
            }

            dfs(left, right+1, sub)
        }

        func isPal(_ left: Int, _ right: Int) -> Bool {
            var left = left
            var right = right

            while left < right {
                if s[left] != s[right] { return false }
                left += 1
                right -= 1
            }

            return true
        }

        dfs(0,0,[])

        return result
    }
}
