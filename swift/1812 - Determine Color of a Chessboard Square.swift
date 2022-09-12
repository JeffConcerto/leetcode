class Solution {
    func squareIsWhite(_ coordinates: String) -> Bool {
        let letterMap = Array("abcdefgh")
        let coordinates = Array(coordinates)
        
        let letterValue = letterMap.firstIndex(of: coordinates[0])!
        let numberValue = Int(String(coordinates[1]))!
        let sum = letterValue + numberValue
        
        return sum % 2 == 0
    }
}
