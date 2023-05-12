class Solution {
    func mostPoints(_ questions: [[Int]]) -> Int {
        var cache = [Int:Int]()

        func dfs(_ i: Int) -> Int {
            guard i < questions.count else { return 0 }
            if let answer = cache[i] {
                return answer
            }
            let score = questions[i][0]
            let next = questions[i][1]+i+1
            cache[i] = max(score + dfs(next), dfs(i+1))
            return cache[i]!
        }

        return dfs(0)
    }
}
