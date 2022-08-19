class Solution {
    func minStartValue(_ nums: [Int]) -> Int {
        var startValue = 1
        var minPositiveValueFound = false
        
        while !minPositiveValueFound {
            var sum = startValue
            var found = true
            
            for num in nums {
                sum += num
                if sum < 1 {
                    found = false
                    break
                }
            }
            
            if found {
                minPositiveValueFound = true
            } else {
                startValue += 1
            }
        }
        
        return startValue
    }
}
