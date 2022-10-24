class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x != 1 else { return 1 }
        
        var min = 0
        var max = x 
        var mid = (min + max) / 2
        
        while mid * mid != x {
            let square = mid * mid
            
            if ( ( square < x ) && ( (mid + 1) * (mid + 1)  > x) ) { return mid } 
            if x < square {
                max = mid
                mid = (min + max) / 2
            } else {
                 min = mid
                mid = (min + max) / 2
            }
        }
        
        return mid
        
    }
}
