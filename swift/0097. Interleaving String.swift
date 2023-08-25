class Solution {
    func isInterleave(_ s1: String, _ s2: String, _ s3: String) -> Bool {
        let s1 = Array(s1), s2 = Array(s2), s3 = Array(s3)
        var memo = [[Int]:Bool]()

        func dfs(_ i: Int, _ j: Int, _ z: Int) -> Bool {
            if z == s3.count && i == s1.count && j == s2.count { return true }
            if z == s3.count { return false }

            if let cache = memo[[i,j,z]] { return cache }

            var result = i < s1.count && s1[i] == s3[z] ? dfs(i+1,j,z+1) : false
            result = j < s2.count && s2[j] == s3[z] ? result || dfs(i,j+1,z+1) : result
            
            memo[[i,j,z]] = result
            return result
        }

        return dfs(0,0,0)
    }
}

