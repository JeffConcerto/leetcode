class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var aString = Array(a)
        var bString = Array(b)
        if aString.count < bString.count {
            for _ in 0..<bString.count - aString.count {
                aString.insert("0", at: 0)
            }
        } else if bString.count < aString.count {
            for _ in 0..<aString.count - bString.count {
                bString.insert("0", at: 0)
            }
        }

        var sum = ""
        var carry = 0
        let n = aString.count        
        for i in 0..<n {
            let digitA = aString[n-i-1].wholeNumberValue!
            let digitB = bString[n-i-1].wholeNumberValue!
            var total = digitA + digitB + carry
            carry = total / 2
            total %= 2
            sum = String(total) + sum
        }

        if carry > 0 {
            sum = String(carry) + sum
        }
        
        return sum
    }
}
