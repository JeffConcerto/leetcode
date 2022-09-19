class Solution {
    func largestOddNumber(_ num: String) -> String {
        var num = Array(num.reversed())
        for index in 0..<num.count {
            if num[index].wholeNumberValue! % 2 == 1 {
                return String(num[index..<num.count].reversed())
            }
        }
        
        return ""
    }
}
