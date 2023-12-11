class Solution {
    func distributeCandies(_ n: Int, _ limit: Int) -> Int {
       var memo = [[Int]: Int]()

       func dfs(_ child: Int, _ total: Int) -> Int {
           if child == 3 && total == n {
               return 1
           } else if child >= 3 || total > n{
               return 0
           }
           if let cache = memo[[child,total]] {
               return cache
           }
           var result = 0

           for i in 0...limit {
               result += dfs(child+1, total + i)
           }

           memo[[child,total]] = result
           return result
       }
        
        return dfs(0,0)
    }
}
