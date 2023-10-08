class Solution {
    func maxDotProduct(_ nums1: [Int], _ nums2: [Int]) -> Int {
        var memo = [[Int]: Int]()

        func dfs(_ i: Int, _ j: Int, _ used: Bool) -> Int {
            if i >= nums1.count || j >= nums2.count {
                return used ? 0 : Int.min
            }
            if let cache = memo[[i,j, used ? 1 : 0]] { return cache }
            var result = Int.min
            result = nums1[i] * nums2[j] + dfs(i+1,j+1, true)
            result = max(result, dfs(i+1, j, used), dfs(i, j+1, used), dfs(i+1,j+1, used))

            memo[[i,j, used ? 1 : 0]] = result
            return result
        }  
        
        return dfs(0,0, false) 
    }

}
