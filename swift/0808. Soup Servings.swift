class Solution {
    func soupServings(_ n: Int) -> Double {
        guard n < 5000 else { return 1.0 }
        var memo = [[Int]:Double]()

        func dfs(_ a: Int, _ b: Int) -> Double {
            if a <= 0 && b > 0 { 
                return 1 
            } else if a <= 0 && b <= 0 { 
                return 0.5 
            } else if b <= 0 { 
                return 0 
            }

            if let cache = memo[[a,b]] { return cache }

            var prob = 0.0

            prob += dfs(a-100,b)
            prob += dfs(a-75,b-25)
            prob += dfs(a-50,b-50)
            prob += dfs(a-25,b-75)

            prob *= 0.25
            memo[[a,b]] = prob
            return prob
        }

        return dfs(n,n)
        
    }
}
