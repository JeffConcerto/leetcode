class Solution {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        let sorted = score.sorted(by: >)
        var map = [Int:Int]()
        for (i,points) in sorted.enumerated() {
            map[points] = i
        }
        var answer = [String]()
        for (i, points) in score.enumerated() {
            if let finish = map[points] {
                switch finish {
                    case 0:
                    answer.append("Gold Medal")
                    case 1:
                    answer.append("Silver Medal")
                    case 2:
                    answer.append("Bronze Medal")
                    default:
                    answer.append(String(finish+1))
                }
            }
        }
        return answer
    }
}
