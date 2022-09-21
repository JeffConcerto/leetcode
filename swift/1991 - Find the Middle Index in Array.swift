class Solution {
    func findMiddleIndex(_ nums: [Int]) -> Int {
        var firstHalf = nums.reduce(0,+)
        var secondHalf = 0
        var index = nums.count - 1
        var leftMostIndex = -1
        
        for num in nums.reversed() {
            if firstHalf - num == secondHalf { leftMostIndex = index }
            secondHalf += num
            firstHalf -= num
            index -= 1
        }
        
        return leftMostIndex
    }
}
