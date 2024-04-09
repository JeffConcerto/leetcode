// New Solution:
class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
       let maxTime = tickets[k]
       var totalTime = 0
       for (i, ticket) in tickets.enumerated() {
        if i <= k {
            totalTime += min(maxTime, ticket)
        } else {
            totalTime += min(maxTime-1, ticket)
        }
       } 

       return totalTime
    }
}

// - Old Solution:
class Solution {
    func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
        var tickets = tickets
        var seconds = 0
        var index = 0
        
        while true {
            if index >= tickets.count { index = 0 }
            if tickets[index] == 0 { index += 1; continue }
            seconds += 1
            tickets[index] -= 1
            if index == k && tickets[index] == 0 {
                 return seconds
            }
            index += 1
        }
        
        return 0
    }
}
