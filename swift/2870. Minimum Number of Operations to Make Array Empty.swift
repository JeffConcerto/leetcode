class Solution {
    func minOperations(_ nums: [Int]) -> Int {
        let nums = nums.sorted()
        var memo = [Int:Int]()

        func dfs(_ i: Int) -> Int {
            if i == nums.count { return 0 }
            if let cache = memo[i] { return cache }    
            var result = 1_000_000_000
            
            if i < nums.count-1 && nums[i] == nums[i+1] {
                result = 1 + dfs(i+2)
            }

            if i < nums.count-2 && nums[i] == nums[i+2] {
                result = min(result, 1 + dfs(i+3))
            }

            memo[i] = result
            return result
        }

        let answer = dfs(0)
        return answer >= 1_000_000_000 ? -1 : answer
    }
}
