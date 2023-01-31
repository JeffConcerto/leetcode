// My solution: Brute force, time limit exceeded:
class Solution {
    func bestTeamScore(_ scores: [Int], _ ages: [Int]) -> Int {
        var ageScore: [(Int, Int)] = []

        for (index, age) in ages.enumerated() {
            ageScore.append((age, scores[index]))
        }

        ageScore.sort {
            if $0.0 == $1.0 {
                return $0.1 > $1.1
            } 
            return $0.0 > $1.0
        }

        var maxScore = 0

        func dp(_ index: Int, _ totalScore: Int, _ lastAge: Int, _ lastScore: Int) {
            // print("index:", index, ", totalScore:", totalScore, ", lastAge:", lastAge)
            guard index < ageScore.count else { 
                maxScore = max(maxScore, totalScore)    
                return 
            }
            if lastAge == -1 {
                dp(index+1, totalScore + ageScore[index].1, ageScore[index].0, ageScore[index].1)
                dp(index+1, totalScore, lastAge, lastAge)
            } else if index > 0 {
                let currentAge = ageScore[index].0
                let currentScore = ageScore[index].1
                if lastAge == currentAge || currentScore <= lastScore {
                    dp(index+1, totalScore + currentScore, currentAge, currentScore)
                    dp(index+1, totalScore, lastAge, lastScore)
                } else {
                    dp(index+1, totalScore, lastAge, lastScore)
                }
            } else {
                dp(index+1, totalScore + ageScore[index].1, ageScore[index].0, ageScore[index].1)  
                dp(index+1, totalScore, lastAge, lastScore)

            }            
        }

        dp(0,0,-1,-1)
        return maxScore
    }
}


// Solution borrowed from yamironov:
class Solution {
    func bestTeamScore(_ scores: [Int], _ ages: [Int]) -> Int {
        let c = min(scores.count, ages.count), indexes = Array(0..<c).sorted(by: { ages[$0] > ages[$1] || ages[$0] == ages[$1] && scores[$0] > scores[$1] })
        var dp = [Int](repeating: 0, count: c)
        for i in 0..<c {
            let score = scores[indexes[i]]
            dp[i] = score
            for j in 0..<i where scores[indexes[j]] >= score {
                dp[i] = max(dp[i], dp[j] + score)
            }
        }
        return dp.max()!
    }
}
