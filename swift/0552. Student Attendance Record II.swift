class Solution {
    func checkRecord(_ n: Int) -> Int {
        let mod = 1000000007
        var memo = Array(repeating: Array(repeating: Array(repeating: -1, count: 4), count: 2), count: n+1)

        func dfs(_ length: Int, _ absents: Int, _ lates: Int) -> Int {
            guard absents < 2 && lates < 3 else { return 0 }
            if length == n {
                return 1
            }
            if memo[length][absents][lates] != -1 { return memo[length][absents][lates] }
            
            let a = dfs(length+1, absents+1, 0)
            let l = dfs(length+1, absents, lates + 1)
            let p = dfs(length+1, absents, 0)
            let result = (a + l + p) % mod

            memo[length][absents][lates] = result
            return result
        }


        return dfs(0,0,0)
        
    }
}
