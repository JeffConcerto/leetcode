class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let set = Set(nums)
        var maxi = 0
        for num in set {
            if !set.contains(num-1) {
                var current = num
                var total = 0
                while set.contains(current) {
                    total += 1
                    current += 1
                }
                maxi = max(maxi, total)
            }
        }
        return maxi
    }
}
