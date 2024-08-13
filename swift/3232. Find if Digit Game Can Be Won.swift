class Solution {
    func canAliceWin(_ nums: [Int]) -> Bool {
        var total = 0
        for num in nums {
            total += num < 10 ? num : -num
        }

        return total != 0
    }
}
