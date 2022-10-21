class Solution {
    func countTime(_ time: String) -> Int {
        var times = [Int]()
        
        for char in time {
            if char == ":" { continue }
            if char == "?" { 
                times.append(-1)
            } else {
                times.append(char.wholeNumberValue!)
            }
        }
        
        var count = 1
        
        for i in 0..<times.count {
            if times[i] == -1 {
                switch i {
                    case 0:
                    if times[1] <= 3 {
                        count *= 3
                    } else {
                        count *= 2
                    }
                    case 1:
                    if times[0] == -1 {
                        count = 24
                    } else if times[0] == 2 {
                        count *= 4
                    } else {
                        count *= 10
                    }
                    case 2:
                    count *= 6
                    case 3:
                    count *= 10
                    default: fatalError()
                }
            }
        }
        
        return count
    }
}
