class Solution {
    func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
        var k = Array(String(k))
        var num = num
        let n = max(k.count, num.count)

        if k.count < n {
            while k.count < n {
                k.insert("0", at: 0)
            }
        } else if num.count < n {
            while num.count < n {
                num.insert(0, at: 0)
            }
        }

        var result = Array(repeating:0, count: n+1)
        var carry = 0

        for i in 0..<n {
            let index = n-1-i
            let kDigit = index < k.count ? k[index].wholeNumberValue! : 0
            let numDigit = index < num.count ? num[index] : 0
            let sum = kDigit + numDigit + carry
            carry = sum / 10
            let newDigit = sum % 10
            result[n-i] = newDigit
        }
        if carry > 0 {
            result[0] = carry
        } else {
            result.removeFirst()
        }

        return result

    }
}
