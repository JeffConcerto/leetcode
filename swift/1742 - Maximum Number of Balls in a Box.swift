// Method 1
class Solution {
    func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
        var boxMap = [Int: Int]()
        var maxCount = 0
        
        for var value in lowLimit...highLimit {
            var sum = 0
            while value > 0 {
                sum += value % 10
                value /= 10
            }
            
            boxMap[sum, default: 0] += 1
            maxCount = max(maxCount, boxMap[sum]!)
        }
        
        return maxCount
    }
}

// Method 2
class Solution {
    func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
        var boxMap = [Int: Int]()
        
        for var value in lowLimit...highLimit {
            var sum = 0
            while value > 0 {
                sum += value % 10
                value /= 10
            }
            boxMap[sum, default: 0] += 1
        }
        
        return boxMap.values.max()!
    }
}
