class Solution {
    func findLucky(_ arr: [Int]) -> Int {
        var numberMap = [Int:Int]()
        
        for num in arr {
            numberMap[num, default: 0] += 1
        }
        
        return numberMap.filter { $0 == $1 }.keys.max() ?? 0
    }
    
}
