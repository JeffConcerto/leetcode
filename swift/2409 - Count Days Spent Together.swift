class Solution {
    func countDaysTogether(_ arriveAlice: String, _ leaveAlice: String, _ arriveBob: String, _ leaveBob: String) -> Int {
        let arriveAlice = arriveAlice.split(separator: "-").map { Int($0)! }
        let leaveAlice = leaveAlice.split(separator: "-").map { Int($0)! }
        
        let arriveBob = arriveBob.split(separator: "-").map{Int($0)!}
        let leaveBob = leaveBob.split(separator: "-").map{Int($0)!}
        
        var monthDayCount = Array(repeating: 0, count: 12)
        let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        
        for i in 1..<monthDayCount.count {
            monthDayCount[i] = monthDayCount[i-1] + daysInMonth[i-1]
        }
        
        let aliceFirstDay = monthDayCount[arriveAlice[0]-1] + arriveAlice[1]
        let aliceLastDay = monthDayCount[leaveAlice[0]-1] + leaveAlice[1]
        
        let bobFirstDay = monthDayCount[arriveBob[0]-1] + arriveBob[1]
        let bobLastDay = monthDayCount[leaveBob[0]-1] + leaveBob[1]
        
        
        if aliceFirstDay > bobLastDay || bobFirstDay > aliceLastDay {
             return 0
        }
        
        if aliceFirstDay > bobFirstDay {
            if aliceLastDay > bobLastDay {
                 return bobLastDay - aliceFirstDay + 1
            } else {
                return aliceLastDay - aliceFirstDay + 1
            }
        } else {
            if bobLastDay > aliceLastDay {
                return aliceLastDay - bobFirstDay + 1
            } else {
                return bobLastDay - bobFirstDay + 1
            }
        }
    }
}
