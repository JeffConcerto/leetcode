class Solution {
    func countLargestGroup(_ n: Int) -> Int {
        var sumMap = [Int: Int]()
        
        for number in 1...n {
            var num = number
            var sum = 0
            while num > 0 {
                let remainder = num % 10
                sum += remainder
                num /= 10
            }
            sumMap[sum, default: 0] += 1
        }
        
        let max = sumMap.values.max()
        
        return sumMap.filter { $1 == max }.count
    }
}
