class Solution {
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        var inDistanceCount = arr1.count
        
        for number1 in arr1 {
            for number2 in arr2 {
                if abs(number1 - number2) <= d {
                    inDistanceCount -= 1
                    break
                }
            } 
        }
        
        return inDistanceCount
    }
}
