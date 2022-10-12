class Solution {
    func digitCount(_ num: String) -> Bool {
        var numMap = [Int:Int]()
        
        for char in num {
            numMap[char.wholeNumberValue!, default: 0] += 1
        }
        
        let num = Array(num)
        for i in 0..<num.count {
            if let count = numMap[i] {
                if count != num[i].wholeNumberValue! { return false }
            } else {
                if num[i].wholeNumberValue! != 0 { return false }
            }
        }
        
        return true
    }
}
