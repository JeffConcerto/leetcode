class Solution {
    func destCity(_ paths: [[String]]) -> String {
        var cityMap = [String: String]()
        
        for path in paths {
            cityMap[path[0]] = path[1]
            if cityMap[path[1]] == nil {
                cityMap[path[1]] = ""
            }
        }
        
        return cityMap.filter {$1 == ""}.keys.first!
    }
}
