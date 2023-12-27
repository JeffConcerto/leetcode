class Solution {
    func minCost(_ colors: String, _ neededTime: [Int]) -> Int {
        let colors = Array(colors)
        var currentColor: Character = "."
        var maxTime = Int.min
        var sumTime = 0
        var timeNeeded = 0

        for (i, color) in colors.enumerated() {
            if color == currentColor {
                sumTime += neededTime[i]
                maxTime = max(maxTime,neededTime[i])
            } else {
                if maxTime != Int.min {
                    timeNeeded += sumTime - maxTime
                }
                currentColor = color
                maxTime = neededTime[i]
                sumTime = neededTime[i]
            }
        }
            if maxTime != Int.min && maxTime != sumTime {
                    timeNeeded += sumTime - maxTime
            }

        return timeNeeded
    }
}
