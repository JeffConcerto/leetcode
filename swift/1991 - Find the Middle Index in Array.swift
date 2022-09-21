class Solution {
    func findMiddleIndex(_ nums: [Int]) -> Int {
        var firstHalf = nums.reduce(0,+)
        var secondHalf = 0
        var index = 0
        
        for num in nums {
            if firstHalf - num == secondHalf { return index }
            secondHalf += num
            firstHalf -= num
            index += 1
        }
        
        return -1
    }
}
