class Solution {
    func subsetXORSum(_ nums: [Int]) -> Int {
        var sum = 0

       func dfs(_ i: Int, _ orSum: Int) {
        if i == nums.count {
            sum += orSum
        } else {
            dfs(i+1, orSum)
            dfs(i+1, orSum ^ nums[i])
        }
       }

       dfs(0,0)
       return sum
    }
}
