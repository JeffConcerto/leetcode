class Solution {
    func maximumTime(_ time: String) -> String {
        var time = Array(time)
        
        for index in 0..<time.count {
            guard time[index] == "?" else { continue }
            
            switch index {
                case 0:
                if (time[index+1]) != "?" && Int(String(time[index+1]))! > 3 {
                    time[index] = "1" 
                } else {
                    time[index] = "2"
                }
                case 1:
                if time[index-1] == "2"{
                    time[index] = "3"
                } else {
                time[index] = "9"
                }
                case 3:
                time[index] = "5"
                case 4:
                time[index] = "9"
                default:
                break 
            }
        }
        
        return String(time) 
    }
}
