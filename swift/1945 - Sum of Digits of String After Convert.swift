class Solution {
    func getLucky(_ s: String, _ k: Int) -> Int {
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
        
        var digitString = ""
        for char in s {
            let digit = alphabet.firstIndex(of: char)! + 1
            digitString = String(digit) + digitString
        }
        
        var sum = 0
        var k = k
        
        while k > 0 {
            sum = 0
            
            for char in digitString {
                sum += char.wholeNumberValue!
            }
            digitString = String(sum)
            k -= 1
        }
        
        return sum
    }
}

// Method 2:
class Solution {
    func getLucky(_ s: String, _ k: Int) -> Int {
        var numberAsString = convertToNumberString(s)
        
        // Add up the digits k Times:
        var integer = 0
        for _ in 0..<k {
            integer = sumAllDigits(of: numberAsString)
            numberAsString = String(integer)
        }
        return integer
    }

    private func convertToNumberString(_ string: String) -> String {
        let letterAValue = Character("a").asciiValue!
        var result = ""
        
        for char in string {
            let convertedNumberAsString = String(Int(char.asciiValue! - letterAValue + 1))
            result.append(convertedNumberAsString)
        }

        return result
    } 

    private func sumAllDigits(of string: String) -> Int {
        var sum = 0

       for char in string {
           sum += char.wholeNumberValue!
       }

        return sum
    }
}
