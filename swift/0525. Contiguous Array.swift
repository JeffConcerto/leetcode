class Solution {
    func findMaxLength(_ nums: [Int]) -> Int {
        var map = [0:-1]
        var maxCount = 0
        var count = 0
        for i in 0..<nums.count {
            count += nums[i] == 1 ? 1 : -1
            if let start = map[count] {
                maxCount = max(maxCount, i - start)
            } else {
                map[count] = i
            }
        }

        return maxCount
    }
}



