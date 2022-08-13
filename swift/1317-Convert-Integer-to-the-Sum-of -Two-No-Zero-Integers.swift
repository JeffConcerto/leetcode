class Solution {
    func getNoZeroIntegers(_ n: Int) -> [Int] {
        var highNum = n - 1
        var lowNum = 1
        
        while String(highNum).contains("0") || String(lowNum).contains("0") {
            highNum -= 1
            lowNum += 1
        }
        
        return [lowNum, highNum]
    }
}
