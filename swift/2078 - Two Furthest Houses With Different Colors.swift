class Solution {
    func maxDistance(_ colors: [Int]) -> Int {
        var maxDist = 0
        
        for i in 0..<colors.count {
            if maxDist > colors.count - 1 - i { break }
            for j in i + 1..<colors.count {
                if colors[i] == colors[j] {continue}
                maxDist = max(maxDist, j - i)
            }
        }
        
        return maxDist
    }
}
