class Solution {
    func isSameAfterReversals(_ num: Int) -> Bool {
        let reverse1 = reverse(num)
        let reverse2 = reverse(reverse1)
        
        return reverse2 == num
        
    }
    
    func reverse(_ number: Int) -> Int {
        var number = number
        var newNum = 0
        
        while number > 0 {
            newNum *= 10
            newNum += number % 10
            number /= 10
        }
        
        return newNum
    }
}
