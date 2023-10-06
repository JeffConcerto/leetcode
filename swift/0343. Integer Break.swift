class Solution {
    func integerBreak(_ n: Int) -> Int {
        if n == 1 || n == 2 { return 1 }
        if n == 3 { return 2 }
        var maxProduct = 1

       func combinations(_ total: Int, _ current: [Int]) {
           if total == n || total == n-1 { 
               if current.count >= 2 {
                maxProduct = max(maxProduct, current.reduce(1,*))
               }
           } else if total > n {
               return
           } else {
               for i in 2...3 {
                   combinations(total+i, current + [i])
               }
           }
       }

       combinations(0, [])
    
        return maxProduct
    }
}
