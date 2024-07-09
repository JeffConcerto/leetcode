class Solution {
    func averageWaitingTime(_ customers: [[Int]]) -> Double {
        var totalWaiting = 0
        var currentTimeSpent = 0

        for customer in customers {
            let arrivalTime = customer[0]
            let cookTime = customer[1]
            totalWaiting += cookTime

            if arrivalTime < currentTimeSpent {
                totalWaiting += currentTimeSpent-arrivalTime
                currentTimeSpent +=  cookTime
            } else {
                currentTimeSpent = arrivalTime + cookTime
            }
        }

        return Double(totalWaiting) / Double(customers.count)
    }
}
