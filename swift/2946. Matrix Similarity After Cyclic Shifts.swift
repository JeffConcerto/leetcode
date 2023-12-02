class Solution {
    func areSimilar(_ mat: [[Int]], _ k: Int) -> Bool {
        let n = mat[0].count
        let k = k % n

        if k == 0 { return true }

        for row in mat {
            var j = 0
            while j < n {
                if row[j] != row[(j+k) % n] {
                    return false
                }
                j += 1
            }
        }

        return true
    }
}
