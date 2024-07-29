class Solution {
    func numTeams(_ rating: [Int]) -> Int {
        var total = 0
        for i in 0..<rating.count-2 {
            let start = rating[i]
            for j in i+1..<rating.count-1 {
                let mid = rating[j]
                let isIncreasing = start < mid
                for k in j+1..<rating.count {
                    let end = rating[k]
                    if isIncreasing && mid < end {
                        total += 1
                    } else if !isIncreasing && mid > end {
                        total += 1
                    }

                }

            }
        }

        return total
    }
}
