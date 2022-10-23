class Solution {
    func haveConflict(_ event1: [String], _ event2: [String]) -> Bool {
        let event1Start = convertToMinutes(event1[0])
        let event1End = convertToMinutes(event1[1])
        
        let event2Start = convertToMinutes(event2[0])
        let event2End = convertToMinutes(event2[1])
        
        if event1Start < event2Start {
            return event2Start <= event1End
        } else {
            return event1Start <= event2End
        }

    }
    
    func convertToMinutes(_ time: String) -> Int {
        let hourAndMin = time.split(separator: ":")
        let hour = Int(hourAndMin[0])!
        let minutes = Int(hourAndMin[1])!

        return hour * 60 + minutes   
    }
    
    
}
