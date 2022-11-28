class Solution {
    func pivotInteger(_ n: Int) -> Int {
        var x = n
        var xSum = (x+1) * (x) / 2
        
        var nSum = sumTo(n, from: x)
        
        while xSum > nSum {
            x -= 1
            xSum = (x+1) * (x) / 2
            nSum = sumTo(n, from: x)
        }
        
        return xSum == nSum ? x : -1
    }
    
    private func sumTo(_ n: Int, from: Int) -> Int {
        var start = from
        var sum = 0
        
        while start <= n {
            sum += start
            start += 1
        }
        
        return sum
    }
}
