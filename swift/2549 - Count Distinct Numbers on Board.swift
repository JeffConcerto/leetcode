class Solution {
    func distinctIntegers(_ n: Int) -> Int {
        var board = [n]
        var seen: Set<Int> = []
        var day = 1
        while day <= n {
            day += 1
            for num in board {
                guard !seen.contains(num) else { continue }
                seen.insert(num)
                for i in 1...n {
                    if num % i == 1 {
                        board.append(i)
                    }
                }
            }
        }
        return seen.count
    }
}
