class Solution {
    func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
        var memo = [Int:Int]()

        func dfs(_ total: Int) -> Int {
            if total == target { return 1 }
            if total > target { return 0 }

            if let cache = memo[total] { return cache }
            
            var result = 0

            for i in 0..<nums.count {
                result += dfs(total+nums[i])
            }

            memo[total] = result
            return result
        }

        return dfs(0)
    }
}
