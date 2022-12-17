class Solution {
    func buddyStrings(_ s: String, _ goal: String) -> Bool {
        guard s.count == goal.count && s.count != 1 else { return false }

        var s = Array(s)
        var goal = Array(goal)

        var first = Int.min
        var last = Int.min
        var differences = 0
        for i in 0..<s.count {
            guard s[i] != goal[i] else { continue }
            differences += 1
            if first == Int.min {
                first = i
            } else {
                 last = i
           }
        }
        
        guard differences <= 2 else { return false }
        if differences == 2 {
            s.swapAt(first,last)
            return s == goal
        } else {
            s.sort()
            goal.sort()
            if s != goal { return false }
            for i in 1..<s.count {
                if s[i-1] == s[i] { return true}
            }
            return false

        }
    }
       
}
