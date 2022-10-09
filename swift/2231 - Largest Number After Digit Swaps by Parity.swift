class Solution {
    func largestInteger(_ num: Int) -> Int {
        var evenNums = [Int]()
        var oddNums = [Int]()
        var isEvenArray = [Bool]()
        var num = num
        
        while num > 0 {
            let digit = num % 10
            
            if digit % 2 == 0 {
                evenNums.append(digit)
                isEvenArray.append(true)
            } else {
                oddNums.append(digit)
                isEvenArray.append(false)
            }
            
            num /= 10
        }
   
        evenNums = evenNums.sorted()
        oddNums = oddNums.sorted()
        isEvenArray.reverse()
        
        var result = 0
      
        for isEven in isEvenArray {
            result *= 10
            if isEven {
                result += evenNums.popLast()!
            } else {
                result += oddNums.popLast()!
            }
        }
         
        return result
    }
}
