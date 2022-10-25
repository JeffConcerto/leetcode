class Solution {
    func climbStairs(_ n: Int) -> Int {
        var memo: [Int: Int] = [:]
        return climbHelper(n, memo: &memo)
    }   
    
    func climbHelper(_ n: Int, memo: inout [Int: Int]) -> Int {
        if n == 2 {
            return 2
        }
        
        if n == 1 {
            return 1
        }
        
        if n <= 0 {
            return 0
        }
        
        if let memo = memo[n] {
            return memo
        }
        
        memo[n] = climbHelper(n - 1, memo: &memo) + climbHelper(n - 2, memo: &memo)
        return memo[n]!
    }
  
}
