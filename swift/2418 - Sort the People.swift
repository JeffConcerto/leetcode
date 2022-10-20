class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        var heightMap = [Int: String]()
        
        for i in 0..<heights.count {
            heightMap[heights[i]] = names[i]    
        }
        
        let heights = heights.sorted(by: >)
        var results = [String]()
        
        for height in heights {
            results.append(heightMap[height]!)
            
        }
        
        return results
    }
}
