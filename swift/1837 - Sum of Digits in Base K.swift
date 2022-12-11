/* Method 1: */
class Solution {
    func sumBase(_ n: Int, _ k: Int) -> Int {
        var n = n
        var result = [Int]()

        while n > 0 {
            result.append(n % k)
            n /= k
        }

        return result.reduce(0,+)
     
    }
}

// Method 2:
class Solution {
    func sumBase(_ n: Int, _ k: Int) -> Int {
        var n = n
        var result = ""
        
        while n > 0 {
            let r = n % k
            result.append(String(r))
            n /= k
        }
        
        var newBaseNum = Int(String(result.reversed()))!
        
        var sum = 0
        
        while newBaseNum > 0 {
            sum += newBaseNum % 10
            newBaseNum /= 10
        }
        
        return sum
        
    }
}
