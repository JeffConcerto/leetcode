class Solution {
    func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
        var groupMap = [Int:[Int]]()
        var result = [[Int]]()

        for (i, size) in groupSizes.enumerated() {
            groupMap[size, default:[]].append(i)

            if groupMap[size]!.count == size {
                result.append(groupMap[size]!)
                groupMap[size] = nil
            }
        }

        return result
    }
}
