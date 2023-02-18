class Solution {
    func minMaxDifference(_ num: Int) -> Int {
        // Get the maximum number possible by:
        var maxNum: Int = {
            var stringNum = Array(String(num))
            var lowestDigitIndex = 0
             // Find the most significant digit that is less than 9:
            for i in 0..<stringNum.count {
                guard stringNum[i] == "9" else { break }
                lowestDigitIndex = i+1
            }
            // If all digits == 9, return the original number since it's the max:
            if lowestDigitIndex == stringNum.count { return num }
            let digitToReplace = stringNum[lowestDigitIndex]
            // Iterate over the array and replace any instance of the digit wiht "9":
            for i in 0..<stringNum.count where stringNum[i] == digitToReplace {
                stringNum[i] = "9"
            }
            // Convert the Array back to String and then finally back to Int:
            return Int(String(stringNum))!
        }()

        // Get the minimum number by converting the most signifiant digit to 0
        // as well as any other instances of that specific digit:
        var minNum: Int = {
            var stringNum = Array(String(num))
            let digitToReplace = stringNum[0]
            for i in 0..<stringNum.count where stringNum[i] == digitToReplace {
                stringNum[i] = "0"
            }
            return Int(String(stringNum))!
        }()

        // Subtract max from min:
        return maxNum - minNum
    }
}
