class Solution {
    func rob(_ nums: [Int]) -> Int {
        var memo = [Int:Int]()
        func dfs(_ i: Int) -> Int {
            if i >= nums.count { return 0 }
            if let cache = memo[i] { return cache }
            let robHouse = nums[i] + dfs(i+2)
            let skipHouse = dfs(i+1)
            let result = max(robHouse,skipHouse)
            memo[i] = result
            return result
        }

        return dfs(0)
    }
}
