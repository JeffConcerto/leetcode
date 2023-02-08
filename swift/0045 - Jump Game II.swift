class Solution {
    func jump(_ nums: [Int]) -> Int {
        var maxWindow = 0
        var currentMax = 0
        var jumps = 0

        for (index, num) in nums.enumerated() {
            guard currentMax < nums.count-1 else { return jumps }
            maxWindow = max(maxWindow, index + num)
            if index == currentMax {
                currentMax = maxWindow
                jumps += 1
            }
        }

        return jumps
    }
}
