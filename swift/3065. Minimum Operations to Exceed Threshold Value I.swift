class Solution {
    func minOperations(_ nums: [Int], _ k: Int) -> Int {
        var count = 0
        for num in nums {
            if num < k { count += 1 }
        }

        return count
    }
}
