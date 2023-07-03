// New Answer:
class Solution {
    func buddyStrings(_ s: String, _ goal: String) -> Bool {
        
        if s == goal {
            return sameStringsCan(s, goal)
        } else {
            return differentStringsCan(s,goal)
        }
    }

    private func differentStringsCan(_ s: String, _ goal: String) -> Bool {
        var s = Array(s)
        let goal = Array(goal)

        var left = -1
        var right = -1
        for i in 0..<s.count {
            if s[i] != goal[i] {
                if left == -1 {
                    left = i
                } else {
                    right = i
                }
            }
            if left != -1 && right != -1 { break }
        }
        if right == -1 { return false }
        s.swapAt(left,right)
        return s == goal 
    }

    private func sameStringsCan(_ s: String, _ goal: String) -> Bool {
        var set = Set<Character>()
        for letter in s {
            if set.contains(letter) { return true}
            set.insert(letter)
        } 

        return false
    }
}
// Old Answer:
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
