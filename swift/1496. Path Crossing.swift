class Solution {
    func isPathCrossing(_ path: String) -> Bool {
        var seen = Set<[Int]>()
        var location = [0,0]
        seen.insert(location)

        for char in path {
            switch char {
                case "N":
                    location[0] += 1
                case "S":
                    location[0] -= 1 
                case "E":
                    location[1] -= 1
                case "W":
                    location[1] += 1
                default:
                    break
            }
            if seen.contains(location) {
                return true
            }
            seen.insert(location)
        }

        return false
    }
}
