class Solution {
    func lastVisitedIntegers(_ words: [String]) -> [Int] {
        var nums = [Int]() // keep as stack to store reverse
        var k = 0 // previouses in a row
        var result = nums

        for word in words {
            if let num = Int(word) {
                nums.append(num)
                k = 0
            } else {
                k += 1
                if k > nums.count {
                    result.append(-1)
                } else {
                    result.append(nums[nums.count-k])
                }
            }
        }

        return result
    }
}
