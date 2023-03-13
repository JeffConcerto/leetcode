class Solution {
    func passThePillow(_ n: Int, _ time: Int) -> Int {
        var current = 1
        var change = 1

        for _ in 0..<time {
            current += change
            if current == n {
                change = -1
            } else if current == 1 {
                change = 1
            }
        }
       
       return current
    }
}
