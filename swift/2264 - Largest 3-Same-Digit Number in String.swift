class Solution {
    func largestGoodInteger(_ num: String) -> String {
        var maxGood = ""
        var num = Array(num)
        
        for i in 0..<num.count - 2 {
            if num[i] == num[i+1] && num[i] == num[i+2] {
                if maxGood.isEmpty {
                    maxGood = String(num[i...i+2])
                } else {
                    let numString = String(num[i...i+2])
                    if Int(numString)! > Int(maxGood)! {
                        maxGood = numString
                    }
                }
            }
        }
        
        return maxGood
    }
}
