// Method 1 
class Solution {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        let sortedTypes = boxTypes.sorted { $0[1] > $1[1] }
        
        var totalUnits = 0
        var currentSize = 0
        
        for box in sortedTypes {
            for boxes in 0..<box[0] {
                if currentSize == truckSize { return totalUnits }
                totalUnits += box[1]
                currentSize += 1
            }
        }
        
        return totalUnits
    }
}

// Method 2 
class Solution {
    func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
        let sortedTypes = boxTypes.sorted { $0[1] > $1[1] }
        
        var totalUnits = 0
        var currentSize = 0
        
        for box in sortedTypes {
            let boxes = box[0]
            let units = box[1]
            
            let maxBoxes = min(truckSize - currentSize, boxes)
            currentSize += maxBoxes
            totalUnits += maxBoxes * units
            
            if currentSize == truckSize { return totalUnits }
        }
        
        return totalUnits
    }
}
