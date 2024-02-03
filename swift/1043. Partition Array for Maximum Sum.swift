class Solution {
    func maxSumAfterPartitioning(_ arr: [Int], _ k: Int) -> Int {
        var memo = [[Int]:Int]()

       func dfs(_ i: Int, _ left: Int, _ maxi: Int) -> Int {
           if i == arr.count { return maxi == -1 ? 0 : Int.min }

           if let cache = memo[[i,left]] { return cache}

           let length = i-left+1
           let useMax = length * max(maxi, arr[i]) + dfs(i+1, i+1, -1)
           let skip = length < k ? dfs(i+1, left, max(maxi,arr[i])) : Int.min
           
           let result = max(useMax,skip)
           memo[[i,left]] = result
           return result
       }

       return dfs(0,0,-1)
    }
}
