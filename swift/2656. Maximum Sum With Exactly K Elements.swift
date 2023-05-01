class Solution {
    func maximizeSum(_ nums: [Int], _ k: Int) -> Int {
        var maxNum = nums.max() ?? 0
        var total = 0
        for _ in 0..<k {
            total += maxNum
            maxNum += 1
        }

        return total
    }
}
