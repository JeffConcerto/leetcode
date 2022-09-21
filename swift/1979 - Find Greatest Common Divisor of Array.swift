class Solution {
    func findGCD(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        let minNum = nums[0]
        let maxNum = nums.last!
        
        return getGCD(minNum: minNum, maxNum: maxNum)
    }
    
    func getGCD(minNum: Int, maxNum: Int) -> Int {
        var divisor = minNum
        
        while divisor > 0 {
            if minNum % divisor  == 0 && maxNum % divisor == 0 { return divisor }
            divisor -= 1
        }
        
        return 1
    }
}
