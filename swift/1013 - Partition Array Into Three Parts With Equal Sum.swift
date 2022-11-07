class Solution {
    func canThreePartsEqualSum(_ arr: [Int]) -> Bool {
        var sum1 = 0
        var sum2 = 0
        
        var start = 0
        var end = arr.count - 1

        while start < end {
            sum1 += arr[start]
            sum2 += arr[end]
            
            start += 1
            end -= 1
            
            if sum1 == sum2 && start < end {
                let sum3 = arr[start...end].reduce(0,+)
                if sum1 == sum3 { return true }
            }
        }
        
        return false
    }
}
