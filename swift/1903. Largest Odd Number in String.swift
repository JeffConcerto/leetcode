class Solution {
    func largestOddNumber(_ num: String) -> String {
       let num = Array(num)
       
       for i in stride(from: num.count-1, to: -1, by: -1) {
           if Int(String(num[i]))! % 2 == 1 {
               return String(num[0...i])
           }
       }
       return ""
    }
}
