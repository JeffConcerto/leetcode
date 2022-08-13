class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var num = num
        var totalSteps = 0
        
        while num > 0 {
            num = num % 2 == 0 ? num / 2 : num - 1

            totalSteps += 1
        }
        
        return totalSteps
    }
}
