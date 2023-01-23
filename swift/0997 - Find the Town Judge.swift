class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        guard n > 1 else {
            return trust.isEmpty ? 1 : -1
        }
        var trustCountMap = [Int: Int]()
        var doesTrust = Array(repeating: false, count: n+1)

        for relationship in trust {
            trustCountMap[relationship[1], default: 0] += 1
            doesTrust[relationship[0]] = true
        }

        for (trusted, trustCount) in trustCountMap {
            guard trustCount == n-1 else { continue }
            return !doesTrust[trusted] ? trusted : -1
        }

        return -1
    }
}



