class Solution {
    func returnToBoundaryCount(_ nums: [Int]) -> Int {
        var location = 0
        var returnTimes = 0
        
        for num in nums {
            location += num
            if location == 0 { 
                returnTimes += 1
            }
        }

        return returnTimes
    }
}
