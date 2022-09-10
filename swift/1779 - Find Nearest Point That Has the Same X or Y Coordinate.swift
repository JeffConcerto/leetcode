class Solution {
    func nearestValidPoint(_ x: Int, _ y: Int, _ points: [[Int]]) -> Int {
        var minDistance = Int.max
        var smallestIndex = -1
        
        for (index, point) in points.enumerated() {
            let px = point[0]
            let py = point[1]
            
            if px == x || py == y {
                let distance = abs(px-x) + abs(py-y)
                
                if distance < minDistance {
                    minDistance = distance
                    smallestIndex = index
                }
            } 
        }
        
        return smallestIndex
    }
}
