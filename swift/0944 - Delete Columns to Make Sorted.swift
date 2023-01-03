class Solution {
    func minDeletionSize(_ strs: [String]) -> Int {
        var strings = [[Character]]()

        for string in strs {
            strings.append(Array(string))
        }

        let letterCount = strings[0].count

        var index = 0
        var count = 0

        while index < letterCount {
            for i in 1..<strings.count {
                if strings[i][index] < strings[i-1][index] {
                    count += 1
                    break
                }
            }
            index += 1
        }

        return count
    }
}
