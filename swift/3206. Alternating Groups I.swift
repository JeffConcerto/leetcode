class Solution {
    func numberOfAlternatingGroups(_ colors: [Int]) -> Int {
        let n = colors.count
        var groups = 0
        var i = 0
        while i < n {
            if colors[i] != colors[(i+n-1)%n] && colors[i] != colors[(i+1) % n] {
                groups += 1
            }
            i += 1
        }

        return groups
    }
}
