class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var writeIndex = 0
        var readIndex = 0
        var numCount = 0
        var currentNum = Int.max
        while readIndex < nums.count {
            if currentNum == nums[readIndex] {
                numCount += 1
            } else {
                numCount = 1
                currentNum = nums[readIndex]
            }

            if numCount <= 2 {
                nums[writeIndex] = currentNum
                writeIndex += 1
            }

            readIndex += 1
        }

        return writeIndex
    }
}
