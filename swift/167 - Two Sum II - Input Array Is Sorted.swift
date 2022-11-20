class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var low = 0
        var high = numbers.count - 1
        
        while low < high {
            let tempSum = numbers[low] + numbers[high]
            
            if tempSum < target {
                low += 1
            } else if tempSum > target {
                high -= 1
            } else {
                return [low + 1, high + 1]
            }
        }
        
        return []
    }
}
