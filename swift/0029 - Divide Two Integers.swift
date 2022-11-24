// Needed help for this solution:
class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        let isNegative = (divisor < 0 && dividend > 0) || (dividend < 0 && divisor >= 0)
        let divisor = abs(divisor)
        var dividend = abs(dividend)
        
        guard dividend >= divisor else { return 0 }
        
        var answer = 0
        
        while dividend >= divisor {
            var maxDivisor = divisor
            var timesToMinus = 1
            
            while multiplyBy2(maxDivisor) < dividend {
                maxDivisor = multiplyBy2(maxDivisor)
                timesToMinus = multiplyBy2(timesToMinus)
            }
            
            dividend -= maxDivisor
            answer += timesToMinus       
        }
        
        answer = isNegative ? -answer : answer
        
        if answer > Int32.max {
            answer = Int(Int32.max)
        } else if answer < Int32.min {
            answer = Int(Int32.min)
        }

        return answer
       
    }
    
    private func multiplyBy2(_ n: Int) -> Int {
        return n << 1
    } 
}
