class Solution {
    func isPathCrossing(_ path: String) -> Bool {
        var currentLocation = (0, 0)
        var locationSet: Set<String> = ["0-0"]
        
        for direction in path {
            switch direction {
                case "N":
                currentLocation.0 += 1
                case "S":
                currentLocation.0 -= 1
                case "E":
                currentLocation.1 += 1
                case "W":
                currentLocation.1 -= 1
                default:
                break
            }
            
            let location = String(currentLocation.0) + "-" + String(currentLocation.1)
            
            if locationSet.contains(location) { return true }
            
            locationSet.insert(location)
        }
        
        return false
        
    }
}
