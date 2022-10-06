class Solution {
    func cellsInRange(_ s: String) -> [String] {
        let s = Array(s)
        var result = [String]()
        
        let startCount = Int(String(s[1]))!
        let endCount = Int(String(s.last!))!
        let startCol = s[0]
        let endCol = s[3]
        
        let alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
        var alphaMap = [Character: Int]()
        
        for i in 0..<alphabet.count {
            alphaMap[alphabet[i]] = i
        }
        
        var alphaIndex = alphaMap[startCol]!
        let alphaEndIndex = alphaMap[endCol]!
        
        for colIndex in alphaIndex...alphaEndIndex {
            for row in startCount...endCount {
                result.append("\(alphabet[colIndex])\(row)")
            }
        }
        
        return result
    }
}
