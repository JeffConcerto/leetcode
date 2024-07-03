class Solution {
    func minDifference(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
       
       func dfs(_ changes: Int, _ minIndex: Int, _ maxIndex: Int) -> Int {
            if changes == 3 {
                if minIndex >= maxIndex { return 0 }
                return nums[maxIndex]-nums[minIndex]
            }
            var minDiff = Int.max
            minDiff = min(minDiff, dfs(changes+1, minIndex+1, maxIndex))
            minDiff = min(minDiff, dfs(changes+1, minIndex, maxIndex-1))
            return minDiff
       }
       return dfs(0,0,nums.count-1)
    }
}
