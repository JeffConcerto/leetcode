class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        // k = total numbers
        // 1..n = range
        // all combinations
        // any order
        var result = [[Int]]()

       func helper(_ start: Int, _ current: [Int]) {
        if current.count == k {
            result.append(current)
        } else if start <= n {
            for i in start...n {
                helper(i+1, current + [i])
            }
        }
       }
       helper(1, [])
        return result
    }
}
