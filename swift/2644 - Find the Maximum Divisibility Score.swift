class Solution {
    func maxDivScore(_ nums: [Int], _ divisors: [Int]) -> Int {
       var maxScore = 0
       var maxDivisor = divisors[0]

       for i in 0..<divisors.count {
           var isDivisibleCount = 0
           for j in 0..<nums.count {
               if nums[j] % divisors[i] == 0 { isDivisibleCount += 1 }
           }
           if isDivisibleCount > maxScore {
               maxScore = isDivisibleCount
               maxDivisor = divisors[i]
           } else if isDivisibleCount == maxScore && divisors[i] < maxDivisor {
               maxDivisor = divisors[i]
           }
       }

       return maxDivisor 
    }
}
