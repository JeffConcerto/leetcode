class Solution {
    func minimumDeleteSum(_ s1: String, _ s2: String) -> Int {
        let s1 = Array(s1)
        let s2 = Array(s2)
        var memo = [[Int]:Int]()

        func dfs(_ i: Int, _ j:Int) -> Int {
            if i >= s1.count && j >= s2.count { return 0 }

            if let cache = memo[[i,j]] { return cache }
            var result = 0

            if i >= s1.count {
                for index in j..<s2.count {
                    result += Int(s2[index].asciiValue!)
                }
            } else if j >= s2.count {
                for index in i..<s1.count {
                    result += Int(s1[index].asciiValue!)
                }
            } else {
                if s1[i] == s2[j] {
                    result = dfs(i+1, j+1)
                } else {
                    let s1Value = Int(s1[i].asciiValue!)
                    let s2Value = Int(s2[j].asciiValue!)
                    result = min(s1Value + dfs(i+1, j), s2Value + dfs(i, j+1))
                }
            }
            memo[[i,j]] = result
            return result
        }

        return dfs(0,0)
    }
}

