// Solution 1:
class Solution {
    func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
        var num = Array(num.reversed())
        var k = k

        var i = 0
        var carry = 0

        while k > 0 || i < num.count {
            let numDigit = i < num.count ? num[i] : 0
            let kDigit = k % 10
            let sum = numDigit + kDigit + carry
            carry = sum / 10
            let newDigit = sum % 10

            if i >= num.count {
                num.append(newDigit)
            } else {
                num[i] = newDigit
            }

            k /= 10
            i += 1
        }

        while carry > 0 {
           if i >= num.count {
                num.append(carry)
                carry = 0
            } else {
                let sum = carry + num[i]
                carry = sum / 10
                let newDigit = sum % 10
                num[i] = newDigit
            }  
            i += 1
        }

        return num.reversed()
        
    }
}

// Solution 2:
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
